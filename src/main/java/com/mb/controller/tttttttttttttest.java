//package com.mb.controller;
//
//import com.mb.Util.DesUtil;
//import com.mb.Util.Md5Util;
//import com.mb.enity.account;
//import com.mb.service.accountService;
//import org.apache.log4j.Logger;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Component;
//import org.springframework.stereotype.Controller;
//import org.springframework.util.ObjectUtils;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//
//import javax.servlet.http.Cookie;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.io.UnsupportedEncodingException;
//
//@Controller
//public class tttttttttttttest {
//
//        @Autowired
//        accountService accountService;
//
//        @Autowired
//    Md5Util md5Util;
//
//        @Autowired
//    DesUtil desUtil;
//
//        Logger logger = Logger.getLogger(tttttttttttttest.class);
//
//        @RequestMapping(value = "/p/register", method = RequestMethod.GET)
//        public String register() {
//            return "registerPage";
//        }
//
//        @RequestMapping(value = "/register", method = RequestMethod.POST)
//        public String insert(account account) {
//
//            logger.info("传入的account为"+account);
//
////对传进来的参数进行判空
//            if (!ObjectUtils.isEmpty(account.getUsername())
//                    && !ObjectUtils.isEmpty(account.getPassword())) {
////注册时,先根据用户名查,如果查不出,说明数据库里没有这条数据则插入,否则返回注册页面
//                account accountA = accountService.findAccount(account.getUsername());
//                logger.info("查询出的结果accountA为====================" + accountA);
//                if (ObjectUtils.isEmpty(accountA)) {
////插入时,使用MD5给密码加密再加盐
//                    account.setPassword(Md5Util.getMd5(account.getPassword()) + account.getId());
//                    logger.info("用户名和加密后的密码=================" +account);
//                    int row = accountService.addAccount(account);
//                    logger.info("是否插入================" + row);
//                    return "loginPage";
//                }
//                logger.info("用户名已存在=================");
//                return "redirect:/p/register";
//
//            }
//            logger.info("用户名密码为空================");
//            return "redirect:/p/register";
//        }
//
//        @RequestMapping(value = "/p/login", method = RequestMethod.GET)
//        public String loginOk() {
//            return "loginPage";
//        }
//
//
//        @RequestMapping(value = "/login", method = RequestMethod.GET)
//        public String login(account account, HttpServletResponse response) throws Exception {
////先给传入的参数判空
//            if (!ObjectUtils.isEmpty(account.getUsername())
//                    && !ObjectUtils.isEmpty(account.getPassword())) {
////密码加密加盐,然后用密码和用户名与数据库里的数据对比,也就是查找
//                account.setPassword(Md5Util.getMd5(account.getPassword()) + account.getId());
//
//                account accountB = accountService.findAll(account.getUsername(), account.getPassword());
//                if (!ObjectUtils.isEmpty(accountB)) {
//                    logger.info("查出的数据==============" + accountB);
//                    //发一个token,token由用户名,id,登录时间组成
//                    //DES加密
//                    String token = desUtil.encrypt(System.currentTimeMillis() + "|" + account.getUsername() + "|" +accountB.getId());
//                    logger.info("token=============" + token);
//                    Cookie cookie = new Cookie("token", token);
//                    cookie.setMaxAge(30 * 60);
//                    logger.info("tokenName=========" + cookie.getName());
//                    logger.info("tokenValue============" + cookie.getValue());
//                    response.addCookie(cookie);
//                    logger.info("看看保存了没有");
//
//                    return "homePage";
//
//                } else {
//                    logger.info("无此用户,请重新输入或注册============");
//                    return "loginPage";
//                }
//
//            }
//            logger.info("输入了空数据啊==================");
//            return "loginPage";
//        }
//
//
//        @RequestMapping(value = "/logout", method = RequestMethod.GET)
//        public String logout(HttpServletResponse response, HttpServletRequest Request) {
////创建一个cookie对象,得到cookie
//            Cookie[] cookies = Request.getCookies();
//            //先取出cookie
//            for (Cookie cookie : cookies) {
////如果存在name为token的cookie,则取出并修改token的时效为0
//                if (cookie.getName().equals("token")) {
//                    cookie.setMaxAge(0);
//                    logger.info("被删除的token是" + cookie.getName());
//                    response.addCookie(cookie);
//                    return "homePage";
//                }
//            }
//            return "homePage";
//        }
//
//
//    }
