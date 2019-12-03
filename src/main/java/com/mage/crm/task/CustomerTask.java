package com.mage.crm.task;


import com.mage.crm.service.CustomerService;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;

@Component
public class CustomerTask {
    @Resource
    private CustomerService customerService;
   /*@Scheduled(cron = "0 00 24 * * ?")
    public void lossTask(){
        customerService.updateCustomerLossState();
        System.out.println("你好，我已经被触发了");
    }*/
}
