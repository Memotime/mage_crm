package com.mage.crm.controller;

import com.mage.crm.RequestPermission;
import com.mage.crm.base.BaseController;
import com.mage.crm.model.MessageModel;
import com.mage.crm.query.SaleChanceQuery;
import com.mage.crm.service.SaleChanceService;
import com.mage.crm.vo.SaleChance;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.Map;

@Controller
@RequestMapping("sale_chance")
public class SaleChanceController extends BaseController {
    @Resource
    private SaleChanceService saleChanceService;
    @RequestMapping("index/{id}")
    public String index(@PathVariable("id") String id){
        if ("1".equals(id)){
            return "sale_chance";
        }else if("2".equals(id)){
            return "cus_dev_plan";
        }else {
            return "error";
        }
    }
    @RequestMapping("querySaleChancesByParams")
    @ResponseBody
    public Map<String,Object> querySaleChancesByParams(SaleChanceQuery saleChanceQuery){
        return saleChanceService.querySaleChancesByParams(saleChanceQuery);
    }
    @RequestMapping("insert")
    @ResponseBody
    public MessageModel insert(SaleChance saleChance){
        saleChanceService.insert(saleChance);
        return createMessageModel("添加成功！");
    }
    @RequestMapping("update")
    @ResponseBody
    public MessageModel update(SaleChance saleChance){
        saleChanceService.update(saleChance);
        return createMessageModel("修改成功！");
    }
    @RequestPermission(aclVal = "101003")
    @RequestMapping("delete")
    @ResponseBody
    public MessageModel delete(Integer[] id){
        saleChanceService.delete(id);
        return createMessageModel("删除成功！");
    }
    @RequestMapping("updateSaleChanceDevResult")
    @ResponseBody
    public MessageModel updateSaleChanceDevResultupdateSaleChanceDevResult(Integer devResult,Integer saleChanceId){
        saleChanceService.updateSaleChanceDevResultupdateSaleChanceDevResult(devResult,saleChanceId);
        return createMessageModel("营销机会状态修改成功");
    }
}
