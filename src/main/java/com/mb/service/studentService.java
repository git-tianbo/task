package com.mb.service;


import com.mb.enity.student;

import java.util.List;


public interface studentService  {

    //查询学员总数量
    int countStudent();

    //    工资>900的学员
    int countSatisfiedSalary();

    //    根据职业名称搜索学员人数
    int count(String professionName);

    //查询所有学员  按工资排序
    List<student> allStudent();

}
