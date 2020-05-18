<%--
  Created by IntelliJ IDEA.
  User: 30252
  Date: 2020/5/12
  Time: 21:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>登录页面</title>
  </head>
  <body>
<h2>在这里登录</h2>
<hr style="height:1px;border:none;border-top:1px solid #555555;" />
<br></br>

  <form action="/login" name="account" method="post">
  用户名:<input type="text" name="username">
  密码:<input type="text" name="password" >
     <input type="submit" value="登录">
  </form>
  <br></br>
  <a href="/beforeRegister"> <input type="button" value="还没有账号，点我注册"> </a>
  </body>
</html>
