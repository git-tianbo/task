package com.mb.dao;

import com.mb.enity.company;

import java.util.List;

public interface companyMapper {

    //查询所有战略企业合作伙伴
    List<company> allCompany();

    int countCompany();

}