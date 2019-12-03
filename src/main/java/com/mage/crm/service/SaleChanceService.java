package com.mage.crm.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.mage.crm.dao.SaleChanceDao;
import com.mage.crm.query.SaleChanceQuery;
import com.mage.crm.util.AssertUtil;
import com.mage.crm.vo.SaleChance;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class SaleChanceService {
    @Resource
    private SaleChanceDao saleChanceDao;
    public Map<String,Object> querySaleChancesByParams(SaleChanceQuery saleChanceQuery) {
        PageHelper.startPage(saleChanceQuery.getPage(),saleChanceQuery.getRows());
        List<SaleChance> saleChances = saleChanceDao.querySaleChancesByParams(saleChanceQuery);
        PageInfo<SaleChance> saleChancePageInfo = new PageInfo<>(saleChances);
        List<SaleChance> list = saleChancePageInfo.getList();
        Map<String,Object> map=new HashMap<String,Object>();
        map.put("rows",list);
        map.put("total",saleChancePageInfo.getTotal());
        return map;
    }

    public void insert(SaleChance saleChance) {
        checkParams(saleChance.linkMan,saleChance.linkPhone,saleChance.cgjl);
        saleChance.setIsValid(1);
        saleChance.setUpdateDate(new Date());
        saleChance.setCreateDate(new Date());
        saleChance.setDevResult(0);//未开发的状态，默认的初始状态
        if (StringUtils.isBlank(saleChance.assignMan)){//未分配的
            saleChance.setState(0);
        }else {//已经分配的
            saleChance.setState(1);
        }
        AssertUtil.isTrue(saleChanceDao.insert(saleChance)<1,"营销机会添加失败！");
    }
    public void checkParams(String linkMan,String linkPhone,String cgjl){
        AssertUtil.isTrue(StringUtils.isBlank(linkMan),"联系人不能为空！");
        AssertUtil.isTrue(StringUtils.isBlank(linkPhone),"联系方式不能为空！");
        AssertUtil.isTrue(StringUtils.isBlank(cgjl),"成功几率不能为空！");
    }

    public void update(SaleChance saleChance) {
        if (StringUtils.isBlank(saleChance.getAssignMan())){//未分配
            saleChance.setState(0);
        }else {//已分配
            saleChance.setState(1);
            saleChance.setAssignTime(new Date());
        }
        saleChance.setUpdateDate(new Date());
        AssertUtil.isTrue(saleChanceDao.update(saleChance)<1,"营销机会修改失败");
    }
    public void delete(Integer[] id) {
        AssertUtil.isTrue(saleChanceDao.delete(id)<1,"营销机会删除失败！");
    }

    public SaleChance querySaleChancesById(Integer id) {
        return saleChanceDao.querySaleChancesById(id);
    }

    public void updateSaleChanceDevResultupdateSaleChanceDevResult(Integer devResult, Integer saleChanceId) {
        System.out.println(saleChanceDao.updateDevResult(saleChanceId,devResult));
        AssertUtil.isTrue(saleChanceDao.updateDevResult(saleChanceId,devResult)<1,"营销机会状态修改失败");
    }
}
