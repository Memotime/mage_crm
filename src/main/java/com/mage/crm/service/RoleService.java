package com.mage.crm.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.mage.crm.dao.ModuleDao;
import com.mage.crm.dao.PermissiDao;
import com.mage.crm.dao.RoleDao;
import com.mage.crm.dto.ModuleDto;
import com.mage.crm.query.RoleQuery;
import com.mage.crm.util.AssertUtil;
import com.mage.crm.vo.Module;
import com.mage.crm.vo.Permission;
import com.mage.crm.vo.Role;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.*;

@Service
public class RoleService {
    @Resource
    private RoleDao roleDao;
    @Resource
    private PermissiDao permissiDao;
    @Resource
    private ModuleDao moduleDao;
    public Map<String,Object> queryRolesByParama(RoleQuery roleQuery) {
        PageHelper.startPage(roleQuery.getPage(),roleQuery.getRows());
        List<Role> roleList = roleDao.queryRolesByParama(roleQuery);
        PageInfo<Role> rolePageInfo = new PageInfo<>(roleList);
        Map<String, Object> map = new HashMap<>();
        map.put("total",rolePageInfo.getTotal());
        map.put("rows",rolePageInfo.getList());
        return map;
    }

    public void insert(Role role) {
        /*
		 * 1.参数校验
		 *    角色名非空
		 * 2.角色名重复性校验
		 * 3.额外字段值设置
		 * 4.执行添加
		 */
        AssertUtil.isTrue(StringUtils.isBlank(role.getRoleName()),"角色名为空！");
        AssertUtil.isTrue(null!=roleDao.queryRoleByRoleName(role.getRoleName()), "角色已存在!");
        role.setCreateDate(new Date());
        role.setUpdateDate(new Date());
        role.setIsValid(1);
        AssertUtil.isTrue(roleDao.insert(role)<1,"角色记录添加失败");
    }

    public void update(Role role) {
        /*
		 * 1.参数校验
		 *    角色名非空
		 *    id 记录必须存在
		 * 2.角色名重复性校验
		 * 3.额外字段值设置
		 *    updateDate
		 * 4.执行更新
		 */
        AssertUtil.isTrue(StringUtils.isBlank(role.getRoleName()),"角色名为空！");
        AssertUtil.isTrue(null==role.getId()||null==roleDao.queryRoleById(role.getId()), "待更新的角色记录不存在!");
        Role temp=roleDao.queryRoleByRoleName(role.getRoleName());
        AssertUtil.isTrue(null!=temp&&!temp.getId().equals(role.getId()), "角色名已存在!");
        role.setUpdateDate(new Date());
        AssertUtil.isTrue(roleDao.update(role)<1,"角色记录修改失败！");
    }

    public void delete(Integer id) {
        AssertUtil.isTrue(roleDao.delete(id)<1,"角色记录删除失败！");
    }

    public List<Role> queryAllRoles() {
        return roleDao.queryAllRoles();
    }

    public void addPermission(Integer rid, Integer[] moduleIds) {
        /**
         * 1.参数合法性校验
         *    rid 角色记录必须存在
         *    moduleIds  可空
         * 2.删除原始权限
         *     查询原始权限
         *         原始权限存在  执行删除操作
         * 3. 执行批量添加
         *     根据moduleId  查询每个模块  权限值
         *     List<Permission>
         */
        AssertUtil.isTrue(null==rid||null==roleDao.queryRoleById(rid+""), "待授权的角色不存在!");
        Role role1=roleDao.queryRoleById(rid+"");
        int count = permissiDao.queryPermissionByRid(rid);//根据rid获取权限数量
        if(count>0){
            AssertUtil.isTrue(permissiDao.deletePermissionByRid(rid)<1,"权限删除失败！");
        }
        List<Permission> permissionList=null;
        if(moduleIds!=null&&moduleIds.length>0){//判断前台传过来的moduleIds是否为空
            /**
             * 执行批量添加
             */
            permissionList=new ArrayList<>();
            Module module=null;
            for(int moduleid:moduleIds){
                module=moduleDao.queryModuleById(moduleid);
                //组装permission对象
                Permission permission=new Permission();
                if(module!=null){
                    permission.setAclValue(module.getOptValue());
                }
                permission.setModuleId(moduleid);
                permission.setRoleId(rid);
                permission.setCreateDate(new Date());
                permission.setUpdateDate(new Date());
                permissionList.add(permission);
            }
        }
        AssertUtil.isTrue(permissiDao.insertBatch(permissionList)<moduleIds.length,"权限添加失败！");
    }
}
