package com.mage.crm.dao;

import com.mage.crm.query.RoleQuery;
import com.mage.crm.vo.Role;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface RoleDao {

    List<Role> queryRolesByParama(RoleQuery roleQuery);

    @Select("select id,role_name as roleName,role_remark as roleRemark "
            + "from t_role where role_name=#{roleName} and is_valid=1")
    Role queryRoleByRoleName(String roleName);
    @Insert("insert into t_role(role_name,role_remark,create_date,update_date,is_valid)"
            + " values(#{roleName},#{roleRemark},#{createDate},#{updateDate},#{isValid})")
    int insert(Role role);
    @Select("select id,role_name as roleName,role_remark as roleRemark "
            + "from t_role where id=#{id} and is_valid=1")
    Role queryRoleById(@Param("id") String id);
    @Update("update t_role set role_name=#{roleName},role_remark=#{roleRemark}"
            + " where id=#{id} and is_valid=1")
    int update(Role role);
    @Delete("update t_role set is_valid=0 where id=#{id}")
    int delete(Integer id);

    @Select("select id,role_name as roleName,role_remark as roleRemark "
            + "from t_role where is_valid=1")
    List<Role> queryAllRoles();
}
