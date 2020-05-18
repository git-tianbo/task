package com.mb.dao;

import com.mb.enity.account;

import java.util.List;

public interface accountMapper {

//根据用户名查找数据库中是否有相同用户（用于注册，登录）
    account  findAccount(String username);

    //根据用户名 密码查找
    account  findAll(String username,String password);

   //根据名称获取密码
   String  getPassword(String username);

//   根据id查询用户是否存在
   account findById(Integer id);

//添加用户  返回id
    int  addAccount(account account);



}