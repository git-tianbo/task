package com.mb.controller;

import com.mb.Util.DESUtilA;
import com.mb.Util.MD5Util;
import com.mb.enity.account;
import com.mb.service.accountService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@Controller
public class loginController {

    Logger logger = Logger.getLogger(loginController.class);

    @Autowired
    accountService accountService;

    DESUtilA des = new DESUtilA();

    MD5Util MD5 = new MD5Util();

     @RequestMapping(value = "/beforeLogin")
    public String beforeLogin(account account) {
         return "loginPage";
     }

    @RequestMapping(value = "/beforeRegister")
    public String beforeRegister(account account) {
        return "registerPage";
    }


    /**
      * @Author: TianBo
      * @Description:
      * @Date: 2020/5/12
      * @Param account: 包含账号密码
      * @return: java.lang.String
      **/

    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public String login(account account, HttpServletResponse response) throws Exception{

        logger.info("输入的表格数据为为：" +account);
        String u = account.getUsername();
        String p = account.getPassword();

        logger.info("取出account账号为"+u+"---------"+"取出account密码为"+p);

        //判断输入的用户名是否为空 或者  空字符
        if (u != null && u != "") {

            logger.info("用户名通过");

             account accountB = accountService.findAccount(u);

             logger.info("查询出的内容为："+accountB);

            //判断数据库中是否有此用户名
            if (!ObjectUtils.isEmpty(accountB)) {

                    logger.info("用户不为空");

                //验证输入密码有没有被篡改过  没有就返回true
                if(MD5Util.verify(p,accountB.getPassword())==true) {

                    logger.info("密码正确");

//                    把用户id转化为long类型
                    int BId = accountB.getId();
                    long B = (int)BId;

                    //对此用户id进行des加密
                    String desId = des.encryptFromLong(B);
                    logger.info("对用户id加密的结果为========" + desId);

                    //对当前时间进行des加密
                    String desTime = des.encryptFromLong(System.currentTimeMillis());
                    logger.info("对时间加密的结果为========" + desTime);

                    //对用户id和登陆时间一起进行des加密
                    String token = des.encrypt(desId + "|" +accountB.getUsername()+ "|" + desTime);
                    logger.info("对用户id和登陆时间加密的结果（token）为========" + token);

//                  创建2个cookie赋值
//                  Cookie nameCookie = new Cookie("name",u);
                    Cookie tokenCookie = new Cookie("token", token);

//                  设置cookie存在时间
//                  nameCookie.setMaxAge(30*60);
                    tokenCookie.setMaxAge(30 * 60);

//                  向客户端返回cookie
//                  response.addCookie(nameCookie);
                    response.addCookie(tokenCookie);

                    //把token放到header头里
//                    response.setHeader("token",token)


                    System.out.print("登陆成功，正在进入主页面");
                    return "redirect:/u/homePage";

                }else {
                    System.out.print("密码错误，请重新输入");
                    return "loginPage";
                }

            } else {
                System.out.print("用户不存在，请重新输入用户名");
                return "loginPage";
            }

        } else {
            System.out.print("用户名不能为空！");
            return "loginPage";
        }

    }



    /**
      * @Author: TianBo
      * @Description:
      * @Date: 2020/5/12
      * @Param account: 包含账号密码
      * @return: java.lang.String
      **/

    @RequestMapping(value = "/register",method = RequestMethod.POST)
    public  String  register(account account){

        logger.info("传入对象为："+account);

        String u = account.getUsername();
        String p = account.getPassword();

        logger.info("输入的账户为:"+ u+"密码为"+p);

        //判断输入的用户名是否为空 或者  空字符
        if(u!=null && u!=""){

                //判断数据库中是否有此用户名
              account accountA = accountService.findAccount(u);

                //如果查询出的账户为空（代表用户不存在），才能注册
                if(ObjectUtils.isEmpty(accountA)){

                    try{

                        //对传入的密码用MD5进行加密加盐
                        String MD5Password = MD5Util.generate(p);

                        //设置密码为新密码
                        account.setPassword(MD5Password);

                        //插入数据
                        int id = accountService.addAccount(account);

                        System.out.print("注册成功，请登录");
                        //返回到登录页面
                        return "loginPage";

                    }catch (Exception e){
                        System.out.print("注册失败，请重新填写注册信息");
                        return "registerPage";
                    }

                }else {
                    System.out.print("用户名已经存在，请更换用户名");
                    return "registerPage";
                }

        }else{
            System.out.print("用户名不能为空");
            return "registerPage";
        }
    }



    //注销按钮
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(HttpServletResponse response, HttpServletRequest Request) {
//创建一个cookie对象,得到cookie
        Cookie[] cookies = Request.getCookies();
        //先取出cookie
        for (Cookie cookie : cookies) {
//如果存在name为token的cookie,则取出并修改token的时效为0
            if (cookie.getName().equals("token")) {
                cookie.setMaxAge(0);
                logger.info("被删除的token是" + cookie.getName());
                response.addCookie(cookie);
                return "homePage";
            }
        }
        return "homePage";
    }
}



