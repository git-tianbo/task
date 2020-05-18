package com.mb.service;

import com.mb.enity.company;

import java.util.List;

public interface companyService {

    //查询所有战略企业合作伙伴
    List<company> allCompany();

    int countCompany();

}
