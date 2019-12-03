package com.mage.crm.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.github.pagehelper.StringUtil;
import com.mage.crm.dao.ModuleDao;
import com.mage.crm.dao.PermissiDao;
import com.mage.crm.dao.UserDao;
import com.mage.crm.dao.UserRoleDao;
import com.mage.crm.dto.UserDto;
import com.mage.crm.model.UserModel;
import com.mage.crm.query.UserQuery;
import com.mage.crm.util.AssertUtil;
import com.mage.crm.util.Base64Util;
import com.mage.crm.util.Md5Util;
import com.mage.crm.vo.Module;
import com.mage.crm.vo.User;
import com.mage.crm.vo.UserRole;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.*;

@Service
public class UserService {
    @Resource
    private UserDao userDao;
    @Resource
    private UserRoleDao userRoleDao;
    @Resource
    private PermissiDao permissiDao;
    @Resource
    private HttpSession session;
    @Resource
    private ModuleDao moduleDao;
    public UserModel userLogin(String userName, String userPwd){
        User user = userDao.queryUserByName(userName);
        AssertUtil.isTrue(null==user,"用户不存在");
        //加密过后的密码
        userPwd=Md5Util.enCode(userPwd);
        AssertUtil.isTrue(!userPwd.equals(user.getUserPwd()),"用户名或密码错误");
        AssertUtil.isTrue("0".equals(user.getIsValid()),"用户已经被注销");
        /**
         * 获取所有模块
         */
        List<Module> moduleList= moduleDao.queryAllModules();
        if(null!=moduleList&&moduleList.size()>0){
            session.setAttribute("moduleList", moduleList);
        }
        /**
         * 获取用户权限  根据用户拥有的角色
         */
        List<String> permissions=permissiDao.queryPermissionsByUserId(user.getId() + "");
        System.out.println(permissions);
        if(null!=permissions&&permissions.size()>0){
            session.setAttribute("userPermission", permissions);
        }
        return createUserModel(user);
    }
    public UserModel createUserModel(User user){
        UserModel userModel = new UserModel();
        userModel.setUserName(user.getUserName());
        userModel.setTrueName(user.getTrueName());
        userModel.setId(Base64Util.enCode(user.getId()));
        return userModel;
    }
    /**
     * 修改密码
     * @param id
     * @param oldPassword
     * @param newPassword
     * @param confirmPassword
     */
    public void updatePwd(String id, String oldPassword, String newPassword, String confirmPassword) {
        //判断id是否存在
        AssertUtil.isTrue(StringUtils.isBlank(id),"id不存在");
        //判断新密码是否为空
        AssertUtil.isTrue(StringUtils.isBlank(newPassword),"新密码不能为空");
        //判断新密码与老密码是否相等
        AssertUtil.isTrue(oldPassword.equals(newPassword),"新密码与老密码不能相等");
        //新密码与query密码是否一致
        AssertUtil.isTrue(!newPassword.equals(confirmPassword),"新密码与确认密码不一致");
        //查询用户是否存在
        User user = userDao.queryUserById(Base64Util.deCode(id));
        AssertUtil.isTrue(null==user,"用户不存在了");
        //查询该用户是否被注销
        AssertUtil.isTrue("0".equals(user.getIsValid()),"用户已经被注销了");
        AssertUtil.isTrue(!Md5Util.enCode(oldPassword).equals(user.getUserPwd()),"原始密码错误");
        AssertUtil.isTrue(userDao.updatePwd(user.getId(),Md5Util.enCode(newPassword))<1,"用户密码更新失败");
    }

    public User queryById(String id) {
        return userDao.queryUserById(id);
    }

    public List<User> queryAllCustomerManager() {
        return userDao.queryAllCustomerManager();
    }

    public Map<String,Object> queryUsersByParams(UserQuery userQuery) {
        PageHelper.startPage(userQuery.getPage(),userQuery.getRows());
        List<UserDto> userDtoList = userDao.queryUsersByParams(userQuery);
        //判断是否查到数据
        if (userDtoList!=null&&userDtoList.size()>1){
            for (UserDto userDto:userDtoList){
                String roleIdsStr=userDto.getRoleIdsStr();
                if (!StringUtil.isEmpty(roleIdsStr)){
                    String[] roleIdArray = roleIdsStr.split(",");
                    for (int i=0;i<roleIdArray.length;i++){
                        List<Integer> roleIds = userDto.getRoleIds();
                        roleIds.add(Integer.parseInt(roleIdArray[i]));
                    }
                }
            }
        }
        PageInfo<UserDto> userPageInfo = new PageInfo<>(userDtoList);
        Map<String, Object> map = new HashMap<>();
        map.put("rows",userPageInfo.getList());
        map.put("total",userPageInfo.getTotal());
        return map;
    }

    public void insert(User user) {
        cheakUser(user);
        user.setIsValid(1);
        user.setCreateDate(new Date());
        user.setUpdateDate(new Date());
        //设置默认密码
        user.setUserPwd(Md5Util.enCode("123456"));
        AssertUtil.isTrue(userDao.insert(user)<1,"用户增加失败！");
        List<Integer> roleIds = user.getRoleIds();
        if(roleIds!=null&&roleIds.size()>0){
            relateRoles(roleIds,Integer.parseInt(user.getId()));
        }
    }
    public void relateRoles(List<Integer> roleIds,Integer userId){
        List<UserRole> roleList = new ArrayList<>();
        for (Integer roleId:roleIds){
            UserRole userRole = new UserRole();
            userRole.setIsValid(1);
            userRole.setCreateDate(new Date());
            userRole.setUpdateDate(new Date());
            userRole.setRoleId(roleId);
            userRole.setUserId(userId);
            roleList.add(userRole);
        }
        AssertUtil.isTrue(userRoleDao.insertBacth(roleList)<1,"用户角色添加失败");
    }
    public void cheakUser(User user){
        //检查参数
        AssertUtil.isTrue(StringUtil.isEmpty(user.getUserName()),"用户名不能为空");
        AssertUtil.isTrue(StringUtil.isEmpty(user.getTrueName()),"真实姓名不能为空");
        AssertUtil.isTrue(StringUtil.isEmpty(user.getPhone()),"手机号码不能为空");
    }

    public void update(User user) {
        //非空验证
        cheakUser(user);
        user.setUpdateDate(new Date());
        User u = userDao.queryUserByName(user.getUserName());
        AssertUtil.isTrue(u!=null&&!u.getId().equals(user.getId()),"用户名已存在！");
        AssertUtil.isTrue(userDao.update(user)<1,"用户修改失败");
        List<Integer> roleIds = user.getRoleIds();
        if(roleIds!=null&&roleIds.size()>0){
            //先删除，在插入
            //先查询，原来是否有用户角色
            int count = userRoleDao.queryRoleCountsByUserId(user.getId());
            if(count>0){
                AssertUtil.isTrue(userRoleDao.deleteRolesByUserId(user.getId())<1,"用户更新失败");
            }
            //插入
            relateRoles(roleIds,Integer.parseInt(user.getId()));
        }
    }

    public void delete(Integer userId) {
        AssertUtil.isTrue(userDao.delete(userId)<1,"用户删除失败");
        int counts = userRoleDao.queryRoleCountsByUserId(String.valueOf(userId));
        if(counts>0){
            AssertUtil.isTrue(userRoleDao.deleteRolesByUserId(String.valueOf(userId))<counts,"用户角色删除失败");
        }
    }
}
