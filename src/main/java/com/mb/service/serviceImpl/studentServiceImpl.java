package com.mb.service.serviceImpl;


import com.mb.dao.studentMapper;
import com.mb.enity.student;
import com.mb.service.studentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class studentServiceImpl implements studentService {

    @Autowired
    studentMapper studentMapper;

    @Override
    public int countStudent() {
        return studentMapper.countStudent();
    }

    @Override
    public int countSatisfiedSalary() {
        return studentMapper.countSatisfiedSalary();
    }

    @Override
    public int count(String professionName) {
        return studentMapper.count(professionName);
    }

    @Override
    public List<student> allStudent() {
        return studentMapper.allStudent();
    }
}