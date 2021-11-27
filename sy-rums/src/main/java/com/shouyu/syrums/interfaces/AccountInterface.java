package com.shouyu.syrums.interfaces;

import com.shouyu.syrums.domain.entity.UcAccount;
import com.shouyu.dframework.respository.Page;

/**
 * 账户接口
 */
public interface AccountInterface {

    Page<UcAccount> list(Integer pageIndex, Integer pageSize);

}
