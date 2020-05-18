<%@page language="java" contentType="text/html; charset=UTF-8"
       pageEncoding="UTF-8" isErrorPage="true" isELIgnored="false" %>
<%--设置编写语言为java,编写内容为txt或者html设置编码格式为UTF-8--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="t" %>
<%@ taglib uri="/tags" prefix="date"%>
<%--json taglib的C标签--%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/task8a.css">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>职业介绍</title>
</head>


<body>

 <main style="background-color:#fafafa">
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img src="http://jns.img.bucket.ks3-cn-beijing.ksyun.com/skill/1/9c2b8d09-82ba-4e16-905d-ec7c7e9371ca.png"
                        alt="...">

                </div>
                <div class="item">
                    <img src="http://jns.img.bucket.ks3-cn-beijing.ksyun.com/skill/1/548d9b7b-5f2d-4e00-ba85-59a927c6559a.png"
                        alt="...">

                </div>
                <div class="item">
                    <img src="http://jns.img.bucket.ks3-cn-beijing.ksyun.com/skill/1/9c2b8d09-82ba-4e16-905d-ec7c7e9371ca.png"
                        alt="...">

                </div>
            </div>

            <!-- Controls -->
            <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
        <div class="row" style="padding-top: 70px;padding-bottom: 70px;">
            <div class="col-md-2 col-md-offset-2" style="text-align: center;padding-bottom: 20px;">
                <img src="images/技能树首页_13.png">
                <div class="text2">高效</div>
                <div class="text2-1" style="padding-top:5px;">将五到七年的成长时间节省到一到三年</div>
            </div>
            <div class="col-md-2" style="text-align: center;padding-bottom: 20px;">
                <img src="images/技能树首页-恢复的_16.jpg">
                <div class="text2" style="padding-top: 27px;">规范</div>
                <div class="text2-1" style="padding-top: 5px;">标准的实战教程不走弯路</div>
            </div>
            <div class="col-md-2" style="text-align: center;padding-bottom: 20px;">
                <img src="images/技能树首页-恢复的_18.jpg">
                <div class="text2" style="padding-top: 25px;">人脉</div>
                <div class="text2-1" style="padding-top: 5px;">同班好友，同院学长，技术大师，入学就是
                    混入职脉圈，为以后铺平道路。
                </div>
            </div>
            <div class="col-md-2 line-dashed" style="text-align: center;border-left:1px dashed #dedede">
                <span class="glyphicon glyphicon-user" style="color: green;position: relative;left: -30px;">${countStudent}</span>

                <div class="text2">累计在线学习人数</div>
                <span class="glyphicon glyphicon-user" style="color: green;position: relative;left: -30px;">${countSatisfiedSalary}</span>
                <div class="text2">学员已经找到满意工作</div>
            </div>
        </div>
        <div class="text4">
            如何学习
        </div>
        <div class="howstudy-top">
            <div class="howstudy">
                <div class="circle">1</div>
                <div class="text2">匹配你现在的个人情况<br>寻找适合自己的岗位</div>
                <img src="images/技能树首页-恢复的_24.jpg" class="arrow1">
            </div>
            <div class="howstudy">
                <div class="circle">2</div>
                <div class="text2">了解职业前景薪金待遇、<br>竞争压力等</div>
                <img src="images/技能树首页-恢复的_24.jpg" class="arrow2">
            </div>
            <div class="howstudy3">
                <div class="circle">3</div>
                <div class="text2" style="position: relative;top: 12px;">掌握行内顶级技能</div>
                <img src="images/技能树首页-恢复的_24.jpg" class="arrow3">
            </div>
            <div class="howstudy4">
                <div class="circle">4</div>
                <div class="text2" style="position: relative;top: 12px;">查看职业目标任务</div>
                <img src="images/技能树首页-恢复的_24.jpg" class="arrow4">
            </div>
        </div>
        <div class="howstudy-bottom">
            <div class="howstudy">
                <div class="circle">5</div>
                <div class="text2">参考学习资源，掌握<br>技能点，逐个完成任务</div>
                <img src="images/技能树首页-恢复的_24.jpg" class="arrow5">
            </div>
            <div class="howstudy">
                <div class="circle">6</div>
                <div class="text2">加入班级，和小伙伴们<br>互帮互助，一块学习</div>
                <img src="images/技能树首页-恢复的_24.jpg" class="arrow6">
            </div>
            <div class="howstudy">
                <div class="circle">7</div>
                <div class="text2">选择导师，一路引导，<br>加速自己成长</div>
                <img src="images/技能树首页-恢复的_24.jpg" class="arrow7">
            </div>
            <div class="howstudy">
                <div class="circle">8</div>
                <div class="text2">完成职业技能，升<br>级业界大牛</div>
                <img src="images/技能树首页-恢复的_24.jpg" class="arrow8">
            </div>
        </div>
        <div class="text4">优秀学员展示</div>
        <div class="introduce-tol">


    <c:forEach items="${students}" varStatus="now">
                <%--定义了一个now名的对象作为varStatus的绑定值。该绑定值也就是now封装了当前遍历的状态--%>

        <div class="introduce">
            <div class="circle2"></div>
            <img src="${students.get(now.index).img}">
            <div class="text3">${students.get(now.index).name}</div>
            <div class="text2">${students.get(now.index).professionName}:${students.get(now.index).introduce}-创建时间：<date:date value="${students.get(now.index).createAt}"/></div>
        </div>

        </c:forEach>

        </div>

        <div class="dian">
            <div class="dian2"></div>
            <div class="dian2"></div>
            <div class="dian2"></div>
            <div class="dian2"></div>
        </div>

        <div class="text4">战略合作企业</div>

        <div class="baner">


    <c:forEach  items="${company}" varStatus="now">
 <%--定义了一个now名的对象作为varStatus的绑定值。该绑定值也就是now封装了当前遍历的状态--%>

            <div class="ali">
                <a href=""><img src="${company.get(now.index).img}"></a>
            </div>

          </c:forEach>

        </div>

    </main>


    <div class="text5">友情链接</div>
    <div class="youqing">
        <ul class="list">
            <li>
                <a href="">手机软件</a>
            </li>
            <li>
                <a href="">教师招聘</a>
            </li>
            <li>
                <a href="">找工作</a>
            </li>
            <li>
                <a href="">教师招聘</a>
            </li>
            <li>
                <a href="">找工作</a>
            </li>
            <li>
                <a href="">手机软件</a>
            </li>
            <li>
                <a href="">教师招聘</a>
            </li>
            <li>
                <a href="">找工作</a>
            </li>
            <li>
                <a href="">教师招聘</a>
            </li>
            <li>
                <a href="">找工作</a>
            </li>
        </ul>
    </div>

</body>
 <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>
</html>




