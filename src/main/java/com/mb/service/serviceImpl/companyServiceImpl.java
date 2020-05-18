package com.mb.service.serviceImpl;

import com.mb.dao.companyMapper;
import com.mb.enity.company;
import com.mb.service.companyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class companyServiceImpl implements companyService {

    @Autowired
    companyMapper companyMapper;

    @Override
    public List<company> allCompany() {
        return companyMapper.allCompany();
    }


    @Override
    public int countCompany(){
        return companyMapper.countCompany();
    }

}