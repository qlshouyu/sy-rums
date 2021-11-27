package com.shouyu.syrums.infrastructure.repository.account;

import com.shouyu.syrums.domain.entity.UcAccount;
import com.shouyu.dframework.infrastructure.repository.mysql.MybatisMapper;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface AccountMapper extends MybatisMapper<String, UcAccount> {
}