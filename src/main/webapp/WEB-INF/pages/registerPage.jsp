<%--
  Created by IntelliJ IDEA.
  User: 30252
  Date: 2020/5/12
  Time: 21:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>注册页面</title>
  </head>
  <body>

<h2>在这里注册</h2>
<hr style="height:1px;border:none;border-top:1px solid #555555;" />
<br></br>

  <form action="/register" name="account" method="post">
  用户名:<input type="text" name="username">
  密码:<input type="text" name="password" >
     <input type="submit" value="注册">
  </form>
  <br></br>
 <br></br>
  <a href="/beforeLogin"> <input type="button" value="已有账户？点我登录"> </a>
  </body>
</html>
