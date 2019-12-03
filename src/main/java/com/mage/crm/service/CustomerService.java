package com.mage.crm.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.mage.crm.dao.CustomerDao;
import com.mage.crm.dao.CustomerLossDao;
import com.mage.crm.dto.CustomerDto;
import com.mage.crm.dto.ServeTypeDto;
import com.mage.crm.query.CustomerGCQuery;
import com.mage.crm.query.CustomerQuery;
import com.mage.crm.util.AssertUtil;
import com.mage.crm.vo.Customer;
import com.mage.crm.vo.CustomerLoss;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.SimpleFormatter;

@Service
public class CustomerService {
    @Resource
    private CustomerDao customerDao;

    @Resource
    private CustomerLossDao customerLossDao;
    public List<Customer> queryAllCustomers() {
        return customerDao.queryAllCustomers();
    }

    public Map<String,Object> queryCustomersByParams(CustomerQuery customerQuery) {
        PageHelper.startPage(customerQuery.getPage(),customerQuery.getRows());
        List<Customer> customerList = customerDao.queryCustomersByParams(customerQuery);
        PageInfo<Customer> customerPageInfo = new PageInfo<>(customerList);
        Map<String,Object> map = new HashMap<>();
        map.put("total",customerPageInfo.getTotal());
        map.put("rows",customerPageInfo.getList());
        return map;
    }

    public void insert(Customer customer) {
        checkParams(customer.getCusManager(),customer.getFr(),customer.getPhone());
        customer.setIsValid(1);
        customer.setCreateDate(new Date());
        customer.setUpdateDate(new Date());
        customer.setState(0);
        customer.setKhno("KH"+new SimpleDateFormat("yyyyMMddHHmmss").format(new Date()));
        AssertUtil.isTrue(customerDao.insert(customer)<1,"客户添加失败！");
    }
    public  void checkParams(String customerName,String fr,String phone){
        AssertUtil.isTrue(StringUtils.isBlank(customerName),"客户名称不能为空");
        AssertUtil.isTrue(StringUtils.isBlank(fr),"法人不能为空");
        AssertUtil.isTrue(StringUtils.isBlank(phone),"联系电话不能为空");
    }

    public void update(Customer customer) {
        checkParams(customer.getCusManager(),customer.getFr(),customer.getPhone());
        customer.setUpdateDate(new Date());
        AssertUtil.isTrue(customerDao.update(customer)<1,"客户修改失败！");
    }

    public void delete(Integer[] ids) {
        AssertUtil.isTrue(customerDao.delete(ids)<1,"客户删除失败");
    }

    public Customer queryCustomerById(Integer id) {
        return customerDao.queryCustomerById(id);
    }

    public void updateCustomerLossState() {
        List<CustomerLoss> customerLosses=customerDao.queryCustomerLoss();
        if(null!=customerLosses&&customerLosses.size()>0){
            for (CustomerLoss customerLoss:customerLosses){
                customerLoss.setState(0);
                customerLoss.setIsValid(1);
                customerLoss.setCreateDate(new Date());
                customerLoss.setUpdateDate(new Date());
            }
        }
        AssertUtil.isTrue(customerLossDao.insertBatch(customerLosses)<1,"客户流失数据添加失败");
    }

    public Map<String,Object> queryCustomersContribution(CustomerGCQuery customerGCQuery) {
        PageHelper.startPage(customerGCQuery.getPage(),customerGCQuery.getRows());
        List<CustomerDto> customerQueryList= customerDao.queryCustomersContribution(customerGCQuery);
        PageInfo<CustomerDto> customerQueryPageInfo = new PageInfo<>(customerQueryList);
        Map<String, Object> map = new HashMap<>();
        map.put("total",customerQueryPageInfo.getTotal());
        map.put("rows",customerQueryPageInfo.getList());
        return map;
    }

    public Map<String,Object> queryCustomerGC() {
        Map<String, Object> map = new HashMap<>();
        List<CustomerDto> customerDtoList = customerDao.queryCustomerGC();
        map.put("code","300");
        /**
         * 横坐标与纵坐标
         */
        String[] levels=null;
        Integer[] counts=null;
        if(customerDtoList!=null&&customerDtoList.size()>0){
            levels=new String[customerDtoList.size()];
            counts=new Integer[customerDtoList.size()];
            for (int i=0;i<customerDtoList.size();i++){
                levels[i]=customerDtoList.get(i).getLevel();
                counts[i]=customerDtoList.get(i).getCount();
            }
            map.put("code",200);
        }
        map.put("levels",levels);
        map.put("counts",counts);
        return map;
    }
}
