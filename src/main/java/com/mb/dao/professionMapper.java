package com.mb.dao;

import com.mb.enity.profession;

import java.util.List;

public interface professionMapper {

    //    根据deve id划分职业方向分类
    List<profession> allProfession(String developmentDirect);

}