package com.mage.crm.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.mage.crm.dao.ModuleDao;
import com.mage.crm.dao.PermissiDao;
import com.mage.crm.dto.ModuleDto;
import com.mage.crm.query.ModuleQuery;
import com.mage.crm.util.AssertUtil;
import com.mage.crm.vo.Module;
import com.mage.crm.vo.Permission;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.*;

@Service
public class ModuleService {
    @Resource
    private ModuleDao moduleDao;
    @Resource
    private PermissiDao permissiDao;
    public List<ModuleDto> queryAllsModuleDtos(Integer rid) {
        List<ModuleDto> moduleDtoList= moduleDao.queryAllsModuleDtos();
        //做一个勾选的问题
        //查询permssion根据rid得到modelId
        List<Integer> modelIds=permissiDao.queryPermissionModuleIdsByRid(rid);
        if (moduleDtoList!=null&&moduleDtoList.size()>0){
            for(ModuleDto moduleDto:moduleDtoList){
                Integer mid=moduleDto.getId();
                if (modelIds.contains(mid)){
                    moduleDto.setChecked(true);// 节点选中！！！
                }
            }
        }
        return moduleDtoList;
    }

    public Map<String,Object> queryModulesByParams(ModuleQuery moduleQuery) {
        // 初始化分页环境
        PageHelper.startPage(moduleQuery.getPage(), moduleQuery.getRows());
        List<Module> modules = moduleDao.queryModulesByParams(moduleQuery);
        PageInfo<Module> pageInfo = new PageInfo<>(modules);
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("total", pageInfo.getTotal());
        map.put("rows", pageInfo.getList());
        return map;
    }

    public List<Module> queryModulesByGrade(Integer grade) {
        return moduleDao.queryModulesByGrade(grade);
    }

    public void insert(Module module) {
        /**
         * 1.参数校验
         *    模块名称非空
         *    层级 非空
         *    模块权限值 非空
         * 2.权限值不能重复
         * 3.每一层  模块名称不能重复
         * 4.非根级菜单 上级菜单必须存在
         * 5.设置额外字段
         *     isValid
         *     createDate
         *     updateDate
         * 6.执行添加
         */
        checkModuleParams(module.getModuleName(), module.getGrade(), module.getOptValue(),module.getUrl());
        AssertUtil.isTrue(null != moduleDao.queryModuleByOptValue(module.getOptValue()), "权限值不能重复!");
        AssertUtil.isTrue(null != moduleDao.queryModuleByGradeAndModuleName(module.getGrade(), module.getModuleName(),module.getParentModuleName()),
                "该层级下模块名已存在!");
        if(!module.getGrade().equals("0")){
            AssertUtil.isTrue(null == moduleDao.queryModuleByPid(module.getParentId()), "父级菜单不存在!");
        }
        module.setCreateDate(new Date());
        module.setIsValid(1);
        module.setUpdateDate(new Date());
        AssertUtil.isTrue(moduleDao.insert(module)<1,"模块添加失败");
    }
   //1.参数校验
    private void checkModuleParams(String moduleName, Integer grade, String optValue,String url) {
        AssertUtil.isTrue(StringUtils.isBlank(moduleName), "模块名非空!");
        AssertUtil.isTrue(null == grade, "层级值非法!");
        Boolean flag = (grade != 0 && grade != 1 && grade != 2);
        AssertUtil.isTrue(flag, "层级值非法!");
        AssertUtil.isTrue(StringUtils.isBlank(optValue), "权限值非空!");
        AssertUtil.isTrue(StringUtils.isBlank(url),"url不能为空！");
    }

    public void update(Module module) {
        /**
         * 1.参数校验
         *    模块名称非空
         *    层级 非空
         *    模块权限值 非空
         *    id 记录必须存在
         * 2.权限值不能重复
         * 3.每一层  模块名称不能重复
         * 4.非根级菜单 上级菜单必须存在
         * 5.设置额外字段
         *     updateDate
         * 6.执行更新
         */
        checkModuleParams(module.getModuleName(), module.getGrade(), module.getOptValue(),module.getUrl());
        Module temp=moduleDao.queryModuleByOptValue(module.getOptValue());
        AssertUtil.isTrue(null!=temp && !temp.getId().equals(module.getId()), "权限值不能重复!");
        temp = moduleDao.queryModuleByGradeAndModuleName(module.getGrade(), module.getModuleName(),module.getParentModuleName());
        AssertUtil.isTrue(null != temp && !temp.getId().equals(module.getId()), "该层级下模块名不能重复!");
        if(!module.getGrade().equals("0")){
            AssertUtil.isTrue(null == moduleDao.queryModuleByPid(module.getParentId()), "父级菜单不存在!");
        }
        module.setUpdateDate(new Date());
        AssertUtil.isTrue(moduleDao.update(module) < 1, "修改模块失败！");
    }

    public void delete(Integer id) {
        /**
         * 删除当前节点
         *    级联删除该节点下所有后代节点
         *  后代节点id 值获取
         *     3层 级联查询
         *        查询当前节点  查询后代节点根据当前节点id
         *     层级无限制 递归查询
         *        100  1   99
         */
        AssertUtil.isTrue(null == id || null == moduleDao.queryModuleById(id), "待删除记录不存在!");

        List<Integer> mids = new ArrayList<Integer>();

        mids = getSubModuleIds(id, mids);
        AssertUtil.isTrue(moduleDao.delete(mids) < mids.size(), "删除失败！");

    }

    private List<Integer> getSubModuleIds(Integer id, List<Integer> mids) {//根级
        Module module = moduleDao.queryModuleById(id);
        if(module!=null){
            mids.add(module.getId());
            //查询子元素
            List<Module > modules = moduleDao.querySubModulesByPid(module.getId());
            for (Module mol:modules){
                mids = getSubModuleIds(mol.getId(), mids);
            }//儿子也加进去了
        }
        return mids;
    }
}
