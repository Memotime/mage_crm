package com.mage.crm.controller;

import com.mage.crm.base.BaseController;
import com.mage.crm.model.MessageModel;
import com.mage.crm.query.CustomerDevPlanQuery;
import com.mage.crm.service.CustomerDevPlanService;
import com.mage.crm.service.SaleChanceService;
import com.mage.crm.vo.CustomerDevPlan;
import com.mage.crm.vo.SaleChance;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.Map;

@Controller
@RequestMapping("cus_dev_plan")
public class CustomerDevPlanController extends BaseController {
    @Resource
    private SaleChanceService saleChanceService;
    @Resource
    private CustomerDevPlanService customerDevPlanService;
    @RequestMapping("index")
    public String index(Integer id, Model model){
        SaleChance saleChance=saleChanceService.querySaleChancesById(id);
        model.addAttribute("saleChance",saleChance);
        return "cus_dev_plan_detail";
    }

    @ResponseBody
    @RequestMapping("queryCusDevPlans")
    public Map<String,Object> queryCusDevPlans(CustomerDevPlanQuery customerDevPlanQuery){
        return  customerDevPlanService.queryCusDevPlans(customerDevPlanQuery);
    }
    @ResponseBody
    @RequestMapping("insert")
    public void insert(CustomerDevPlan customerDevPlan){
        customerDevPlanService.insert(customerDevPlan);
       createMessageModel("客户开发计划添加成功");

    }

    @ResponseBody
    @RequestMapping("update")
    public void update(CustomerDevPlan customerDevPlan){
        customerDevPlanService.update(customerDevPlan);
        createMessageModel("客户开发计划更新成功");

    }
    @ResponseBody
    @RequestMapping("delete")
    public MessageModel delete(Integer id){
        customerDevPlanService.delete(id);
        return createMessageModel("客户开发计划删除成功");
    }
}
