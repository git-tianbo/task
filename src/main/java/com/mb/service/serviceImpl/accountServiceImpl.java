package com.mb.service.serviceImpl;


import com.mb.dao.accountMapper;
import com.mb.enity.account;
import com.mb.service.accountService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class accountServiceImpl implements accountService {

    @Autowired
    accountMapper accountMapper;

    @Override
    public account findAccount(String username) {
        return accountMapper.findAccount(username);
    }


    @Override
    public account findAll(String username,String password) {
        return accountMapper.findAll(username,password);
    }

    @Override
    public int addAccount(account account) {
        accountMapper.addAccount(account);
        return account.getId();
    }

    @Override
    public account findById(Integer id) {
        return accountMapper.findById(id);
    }

    @Override
    public String getPassword(String username) {
        return accountMapper.getPassword(username);
    }
}