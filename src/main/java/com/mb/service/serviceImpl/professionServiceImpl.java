package com.mb.service.serviceImpl;

import com.mb.dao.professionMapper;
import com.mb.enity.profession;
import com.mb.service.professionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Service
public class professionServiceImpl implements professionService {

    @Autowired
    professionMapper professionMapper;

    //    根据deve id划分职业方向分类
    @Override
    public List<profession> all(String developmentDirect) {

        return  professionMapper.allProfession(developmentDirect);

    }
}