package com.mb.controller;

import com.mb.enity.profession;
import com.mb.service.professionService;
import com.mb.service.studentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

@Controller
public class professionController {
    @Autowired
    professionService professionService;

    @Autowired
    studentService studentService;


    @RequestMapping(value = "/u/profession",method = RequestMethod.GET)
    public String allProfession(Model model){

        List<profession> listA = professionService.all("前端开发");
        List<profession> listB = professionService.all("后端开发");
        List<profession> listC = professionService.all("移动开发");
        List<profession> listD = professionService.all("整站开发");
        List<profession> listE = professionService.all("运行维护");

        List<Integer>  A = new ArrayList();

        for(int i =0; i< listA.size();i++) {
            String professionName = listA.get(i).getProfessionName();
            int a = studentService.count(professionName);
           A.add(a);
        }

        List<Integer>  B = new ArrayList();

        for(int i =0; i< listB.size();i++) {
            String professionName = listB.get(i).getProfessionName();
            int b = studentService.count(professionName);
            B.add(b);
        }

        List<Integer>  C = new ArrayList();

        for(int i =0; i< listC.size();i++) {
            String professionName = listC.get(i).getProfessionName();
            int c = studentService.count(professionName);
            C.add(c);
        }

        List<Integer>  D = new ArrayList();

        for(int i =0; i< listD.size();i++) {
            String professionName= listD.get(i).getProfessionName();
            int d = studentService.count(professionName);
            D.add(d);
        }

        List<Integer>  E = new ArrayList();

        for(int i =0; i< listE.size(); i++) {
            String professionName = listE.get(i).getProfessionName();
            int e = studentService.count(professionName);
            E.add(e);
        }

        model.addAttribute("listA",listA);
        model.addAttribute("listB",listB);
        model.addAttribute("listC",listC);
        model.addAttribute("listD",listD);
        model.addAttribute("listE",listE);
        model.addAttribute("A",A);
        model.addAttribute("B",B);
        model.addAttribute("C",C);
        model.addAttribute("D",D);
        model.addAttribute("E",E);
        return "profession";
    }
}