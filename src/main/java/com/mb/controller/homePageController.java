package com.mb.controller;


import com.mb.enity.company;
import com.mb.enity.student;
import com.mb.service.companyService;
import com.mb.service.studentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
public class homePageController {
    @Autowired
    studentService studentService;
    @Autowired
    companyService companyService;

        @RequestMapping(value = "/u/homePage",method = RequestMethod.GET)
        public String allStudent(Model model){

            try {
                List<student> students = studentService.allStudent();
                List<company> company =companyService.allCompany();
                int countStudent = studentService.countStudent();
                int countCompany = companyService.countCompany();
                int countSatisfiedSalary = studentService.countSatisfiedSalary();

                model.addAttribute("code", 200);
                model.addAttribute("students", students);
                model.addAttribute("company",company);
                model.addAttribute("countStudent",countStudent);
                model.addAttribute("countCompany",countCompany);
                model.addAttribute("countSatisfiedSalary",countSatisfiedSalary);
                return "homePage";

            } catch (Exception e) {
                model.addAttribute("code", 201);
                return "test";
            }
        }
        }
