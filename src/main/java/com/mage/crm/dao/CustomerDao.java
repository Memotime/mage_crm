package com.mage.crm.dao;

import com.mage.crm.dto.CustomerDto;
import com.mage.crm.dto.ServeTypeDto;
import com.mage.crm.query.CustomerGCQuery;
import com.mage.crm.query.CustomerQuery;
import com.mage.crm.vo.Customer;
import com.mage.crm.vo.CustomerLoss;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

public interface CustomerDao {
    @Select("select id,name from t_customer where is_valid=1 and state=0")
    public List<Customer> queryAllCustomers();

    List<Customer> queryCustomersByParams(CustomerQuery customerQuery);

    int insert(Customer customer);

    int update(Customer customer);

    int delete(Integer[] ids);

    Customer queryCustomerById(Integer id);


    List<CustomerLoss> queryCustomerLoss();
    @Update("update t_customer set state=1 where khno = #{cusNo}")
    int updateCustomerState(@Param("cusNo") String cusNo);

    List<CustomerDto> queryCustomersContribution(CustomerGCQuery customerGCQuery);

    List<CustomerDto> queryCustomerGC();

}
