package com.mage.crm.dao;

import com.mage.crm.vo.CustomerReprieve;


import java.util.List;

public interface CustomerRepriDao {
    List<CustomerReprieve> queryRepriByLossId(String lossId);

    int insert(CustomerReprieve customerReprieve);

    int delete(Integer id);

    int update(CustomerReprieve customerReprieve);
}
