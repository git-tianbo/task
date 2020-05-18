package com.mb.service;

import com.mb.enity.profession;

import java.util.List;


public interface professionService {

    //    根据deve id划分职业方向分类
    List<profession> all(String developmentDirect);

}
