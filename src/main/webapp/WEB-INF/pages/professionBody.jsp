<%@page language="java" contentType="text/html; charset=UTF-8"
       pageEncoding="UTF-8" isErrorPage="true" isELIgnored="false" %>
<%--设置编写语言为java,编写内容为txt或者html设置编码格式为UTF-8--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="t" %>
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

  <main style="padding-left: 5%;padding-right: 5%;background-color: #fafafa;">
        <div class="shouye" style="text-align:left">首页><span class="tou ">职业</span></div>
        <div class="leibie">
            <div>方向&nbsp;:</div>
            <div class="anniu1">全部</div>
            <div class="anniu2">前端开发</div>
            <div class="anniu3">后端开发</div>
            <div class="anniu4">移动开发</div>
            <div class="anniu5">整站开发</div>
            <div class="anniu6">运营维护</div>
        </div>



        <div class="fangxiang" style="text-align:left">前端开发方向</div>
        <div class="qdfx">

<c:forEach items="${listA}" varStatus="now">

            <div class="abc">
                <table border="1" class="bk">
                    <tr>
                        <td class="b1">
                            <img src=${listA.get(now.index).img} class="tp"></td>
                        <td class="qd">
                            <span class="gcs">${listA.get(now.index).professionName}</span><br><br><span style="font-weight: 500;">
                               ${listA.get(now.index).introduce}</span></td>
                    </tr>
                    <tr>
                        <td class="mk">门槛</td>
                        <td class="mk">难易程度</td>
                    </tr>
                    <tr>
                        <td class="mk"><span>成长周期</span><span style="color: #f4716b;">&nbsp;&nbsp;${listA.get(now.index).periodOne}-${listA.get(now.index).periodTwo}</span>年</td>
                        <td class="mk"><span>稀缺程度</span><span
                                style="color: #f4716b;">&nbsp;&nbsp;${listA.get(now.index).sarcity}</span><span>家公司需要</span></td>
                    </tr>
                </table>
                <table border="1" class="dy">
                    <tr>
                        <td rowspan="3" class="mk">薪资待遇</td>
                        <td class="xz">
                            0-1年&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;${listA.get(now.index).salaryOne}</td>
                    </tr>
                    <tr>
                        <td class="xz">
                            1-3年&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;${listA.get(now.index).salaryTwo}</td>
                    </tr>
                    <tr>
                        <td class="xz">
                            3-5年&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;${listA.get(now.index).salaryThree}</td>
                    </tr>

                    <tr>
                        <td colspan="2" style="font-size: 120%;font-weight: 550;padding:8px 0px 8px 5px ;">有<span
                                style="color: #f4716b;">${A.get(now.index)}</span>人正在学</td>
                    </tr>
                    <tr>
                        <td style="font-size: 80%;color: #c6c6c6;padding: 5px 5px;" colspan="2">
                            ${listA.get(now.index).prompt}</td>
                    </tr>
                </table>
                <div class="text-ios">
                    <div style="margin:0 auto;width: 60px;padding:80px 0px;">${listA.get(now.index).professionName}</div>
                    <div style="padding: 0px 30px;">&ensp;&ensp;&ensp;&ensp;${listA.get(now.index).pullIntroduce}</div>
                </div>
                 </div>
</c:forEach>

        </div>


         <div class="fangxiang" style="text-align:left">后端开发方向</div>
                <div class="qdfx">

        <c:forEach items="${listB}" varStatus="now">

                    <div class="abc">
                        <table border="1" class="bk">
                            <tr>
                                <td class="b1">
                                    <img src="${listB.get(now.index).img}" class="tp"></td>
                                <td class="qd">
                                    <span class="gcs">${listB.get(now.index).professionName}</span><br><br><span style="font-weight: 500;">
                                       ${listB.get(now.index).introduce}</span></td>
                            </tr>
                            <tr>
                                <td class="mk">门槛</td>
                                <td class="mk">难易程度</td>
                            </tr>
                            <tr>
                                <td class="mk"><span>成长周期</span><span style="color: #f4716b;">&nbsp;&nbsp;${listB.get(now.index).periodOne}-${listB.get(now.index).periodTwo}</span>年</td>
                                <td class="mk"><span>稀缺程度</span><span
                                        style="color: #f4716b;">&nbsp;&nbsp;${listB.get(now.index).sarcity}</span><span>家公司需要</span></td>
                            </tr>
                        </table>
                        <table border="1" class="dy">
                            <tr>
                                <td rowspan="3" class="mk">薪资待遇</td>
                                <td class="xz">
                                    0-1年&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;${listB.get(now.index).salaryOne}</td>
                            </tr>
                            <tr>
                                <td class="xz">
                                    1-3年&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;${listB.get(now.index).salaryTwo}</td>
                            </tr>
                            <tr>
                                <td class="xz">
                                    3-5年&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;${listB.get(now.index).salaryThree}</td>
                            </tr>

                            <tr>
                                <td colspan="2" style="font-size: 120%;font-weight: 550;padding:8px 0px 8px 5px ;">有<span
                                        style="color: #f4716b;">${B.get(now.index)}</span>人正在学</td>
                            </tr>
                            <tr>
                                <td style="font-size: 80%;color: #c6c6c6;padding: 5px 5px;" colspan="2">
                                    ${listB.get(now.index).prompt}</td>
                            </tr>
                        </table>
                        <div class="text-ios">
                            <div style="margin:0 auto;width: 60px;padding:80px 0px;">${listB.get(now.index).professionName}</div>
                            <div style="padding: 0px 30px;">&ensp;&ensp;&ensp;&ensp;${listB.get(now.index).pullIntroduce}</div>
                        </div>
                    </div>
                         </c:forEach>

                </div>



                 <div class="fangxiang" style="text-align:left">移动开发方向</div>
                        <div class="qdfx">

                <c:forEach items="${listC}" varStatus="now">

                            <div class="abc">
                                <table border="1" class="bk">
                                    <tr>
                                        <td class="b1">
                                            <img src="${listC.get(now.index).img}" class="tp"></td>
                                        <td class="qd">
                                            <span class="gcs">${listC.get(now.index).professionName}</span><br><br><span style="font-weight: 500;">
                                               ${listC.get(now.index).introduce}</span></td>
                                    </tr>
                                    <tr>
                                        <td class="mk">门槛</td>
                                        <td class="mk">难易程度</td>
                                    </tr>
                                    <tr>
                                        <td class="mk"><span>成长周期</span><span style="color: #f4716b;">&nbsp;&nbsp;${listC.get(now.index).periodOne}-${listC.get(now.index).periodTwo}</span>年</td>
                                        <td class="mk"><span>稀缺程度</span><span
                                                style="color: #f4716b;">&nbsp;&nbsp;${listC.get(now.index).sarcity}</span><span>家公司需要</span></td>
                                    </tr>
                                </table>
                                <table border="1" class="dy">
                                    <tr>
                                        <td rowspan="3" class="mk">薪资待遇</td>
                                        <td class="xz">
                                            0-1年&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;${listC.get(now.index).salaryOne}</td>
                                    </tr>
                                    <tr>
                                        <td class="xz">
                                            1-3年&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;${listC.get(now.index).salaryTwo}</td>
                                    </tr>
                                    <tr>
                                        <td class="xz">
                                            3-5年&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;${listC.get(now.index).salaryThree}</td>
                                    </tr>

                                    <tr>
                                        <td colspan="2" style="font-size: 120%;font-weight: 550;padding:8px 0px 8px 5px ;">有<span
                                                style="color: #f4716b;">${C.get(now.index)}</span>人正在学</td>
                                    </tr>
                                    <tr>
                                        <td style="font-size: 80%;color: #c6c6c6;padding: 5px 5px;" colspan="2">
                                            ${listC.get(now.index).prompt}</td>
                                    </tr>
                                </table>
                                <div class="text-ios">
                                    <div style="margin:0 auto;width: 60px;padding:80px 0px;">${listC.get(now.index).professionName}</div>
                                    <div style="padding: 0px 30px;">&ensp;&ensp;&ensp;&ensp;${listC.get(now.index).pullIntroduce}</div>
                                </div>

                            </div>
                                          </c:forEach>
                        </div>



                         <div class="fangxiang" style="text-align:left">整站开发方向</div>
                                <div class="qdfx">

                        <c:forEach items="${listD}" varStatus="now">

                                    <div class="abc">
                                        <table border="1" class="bk">
                                            <tr>
                                                <td class="b1">
                                                    <img src="${listD.get(now.index).img}" class="tp"></td>
                                                <td class="qd">
                                                    <span class="gcs">${listD.get(now.index).professionName}</span><br><br><span style="font-weight: 500;">
                                                       ${listD.get(now.index).introduce}</span></td>
                                            </tr>
                                            <tr>
                                                <td class="mk">门槛</td>
                                                <td class="mk">难易程度</td>
                                            </tr>
                                            <tr>
                                                <td class="mk"><span>成长周期</span><span style="color: #f4716b;">&nbsp;&nbsp;${listD.get(now.index).periodOne}-${listD.get(now.index).periodTwo}</span>年</td>
                                                <td class="mk"><span>稀缺程度</span><span
                                                        style="color: #f4716b;">&nbsp;&nbsp;${listD.get(now.index).sarcity}</span><span>家公司需要</span></td>
                                            </tr>
                                        </table>
                                        <table border="1" class="dy">
                                            <tr>
                                                <td rowspan="3" class="mk">薪资待遇</td>
                                                <td class="xz">
                                                    0-1年&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;${listD.get(now.index).salaryOne}</td>
                                            </tr>
                                            <tr>
                                                <td class="xz">
                                                    1-3年&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;${listD.get(now.index).salaryTwo}</td>
                                            </tr>
                                            <tr>
                                                <td class="xz">
                                                    3-5年&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;${listD.get(now.index).salaryThree}</td>
                                            </tr>

                                            <tr>
                                                <td colspan="2" style="font-size: 120%;font-weight: 550;padding:8px 0px 8px 5px ;">有<span
                                                        style="color: #f4716b;">${D.get(now.index)}</span>人正在学</td>
                                            </tr>
                                            <tr>
                                                <td style="font-size: 80%;color: #c6c6c6;padding: 5px 5px;" colspan="2">
                                                    ${listD.get(now.index).prompt}</td>
                                            </tr>
                                        </table>
                                        <div class="text-ios">
                                            <div style="margin:0 auto;width: 60px;padding:80px 0px;">${listD.get(now.index).professionName}</div>
                                            <div style="padding: 0px 30px;">&ensp;&ensp;&ensp;&ensp;${listD.get(now.index).pullIntroduce}</div>
                                        </div>

                                    </div>
                                                  </c:forEach>
                                </div>




                                 <div class="fangxiang" style="text-align:left">运营维护方向</div>
                                        <div class="qdfx">

                                <c:forEach items="${listE}" varStatus="now">

                                            <div class="abc">
                                                <table border="1" class="bk">
                                                    <tr>
                                                        <td class="b1">
                                                            <img src="${listE.get(now.index).img}" class="tp"></td>
                                                        <td class="qd">
                                                            <span class="gcs">${listE.get(now.index).professionName}</span><br><br><span style="font-weight: 500;">
                                                               ${listE.get(now.index).introduce}</span></td>
                                                    </tr>
                                                    <tr>
                                                        <td class="mk">门槛</td>
                                                        <td class="mk">难易程度</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="mk"><span>成长周期</span><span style="color: #f4716b;">&nbsp;&nbsp;${listE.get(now.index).periodOne}-${listE.get(now.index).periodTwo}</span>年</td>
                                                        <td class="mk"><span>稀缺程度</span><span
                                                                style="color: #f4716b;">&nbsp;&nbsp;${listE.get(now.index).sarcity}</span><span>家公司需要</span></td>
                                                    </tr>
                                                </table>
                                                <table border="1" class="dy">
                                                    <tr>
                                                        <td rowspan="3" class="mk">薪资待遇</td>
                                                        <td class="xz">
                                                            0-1年&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;${listE.get(now.index).salaryOne}</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="xz">
                                                            1-3年&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;${listE.get(now.index).salaryTwo}</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="xz">
                                                            3-5年&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;${listE.get(now.index).salaryThree}</td>
                                                    </tr>

                                                    <tr>
                                                        <td colspan="2" style="font-size: 120%;font-weight: 550;padding:8px 0px 8px 5px ;">有<span
                                                                style="color: #f4716b;">${E.get(now.index)}</span>人正在学</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="font-size: 80%;color: #c6c6c6;padding: 5px 5px;" colspan="2">
                                                            ${listE.get(now.index).prompt}</td>
                                                    </tr>
                                                </table>
                                                <div class="text-ios">
                                                    <div style="margin:0 auto;width: 60px;padding:80px 0px;">${listE.get(now.index).professionName}</div>
                                                    <div style="padding: 0px 30px;">&ensp;&ensp;&ensp;&ensp;${listE.get(now.index).pullIntroduce}</div>
                                                </div>

                                            </div>
                                                </c:forEach>
                                        </div>


    </main>
    </body>

 <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>

    </html>