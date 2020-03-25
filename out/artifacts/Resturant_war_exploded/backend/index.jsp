<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/15
  Time: 8:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <title>后台登录</title>
</head>
<style>
  body{
    margin: 0px;
  }
  *{
    font-size: 12px;
  }
  .main{
    width: 1900px;
    height: 550px;
    float: left;

  }
  .top{
    width: 1900px;
    height: 41px;
    float: left;
    background-image: url(img/login-top-bg.gif);
  }
  .content_bg{
    width: 1900px;
    height: 532px;
    float: left;
    background-image: url(img/login_bg.jpg);
  }

  .content{
    width: 630px;
    height: 220px;
    float: left;
    margin: 145px 10px 50px 240px;


  }
  .logo{
    width: 279px;
    height: 68px;
    float: right;
    margin-right: 180px;
    background-image: url(img/logo.png);
  }

  .link{
    width: 220px;
    height: 46px;
    float: left;
    margin-left: 150px;
  }
  p{
    height: 23px;
    margin: 0px;
    display: block;
    float: right;
    line-height: 23px;
  }
  .icon{
    width: 460px;
    height: 40px;
    float: left;
    margin-top: 50px;
  }
  a{
    display: block;
    float:left;
    font-size: 18px;
    text-decoration: none;
    color: black;
    margin-left: 20px;
    margin-right: 100px;
  }
  form{
    width: 350px;
    height: 532px;
    float: left;
    margin-left: 20px;
  }
  table{
    width: 300px;
    height: 200px;
    margin-top: 145px;
  }
  span{
    font-size: 16px;
    color: gray;
  }
  .welcome{
    width: 300px;
    height: 140px;
    float: left;
    margin-top: 390px;
    background-image: url(img/login-wel.gif);
    background-repeat: no-repeat;
  }
  .footer{
    width: 1900px;
    height: 290px;
    float: left;
    background-color: #1D3647;
  }
  font{
    display: block;
    color: #A2CAD3;
    text-align: center;
  }
  li{
    list-style: none;
    color: red;
  }
</style>
<body>
<div class="main">
  <!--top-->
  <div class="top">

  </div>
  <!--content-->
  <div class="content_bg">
    <!--left-->
    <div class="content">

      <div class="logo">

      </div>
      <div class="link">
        <p> <img src="img/icon-mail2.gif" /> 客户服务邮箱:admin@apsfc.com </p>
        <br />
        <p> <img src="img/icon-phone.gif" /> 官方网站：http：//www.apsfc.com </p>
      </div>
      <div class="icon">
        <a href=""> <img src="img/icon-demo.gif" /> 使用说明 </a>
        <a href=""> <img src="img/icon-login-seaver.gif" /> 在线客服 </a>
      </div>

    </div>
    <!--right login-->
    <form name="login" action="user" method="post" >
      <input type="hidden" name="method" value="login">
      <table>
        <tr>
          <td colspan="3">
            <span>登陆网上订餐后台管理</span>
          </td>
        </tr>
        <tr>
          <td>
            管理员：
          </td>
          <td colspan="2">
            <input type="text" name="systemusername"/>  <li>${msg}</li>
          </td>
        </tr>
        <tr>
          <td>
            密码：
          </td>
          <td>
            <input type="password" name="systemuserpassword"/>
          </td>
          <td>
            <img src="img/luck.gif"/>
          </td>
        </tr>
        <tr>
          <td colspan="3" align="center">
            <input type="checkbox"  />5天内自动登录
          </td>
        </tr>
        <tr>
          <td></td>
          <td>
            <input type="submit" value="登陆" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="reset" value="取消" />
          </td>
        </tr>
      </table>
    </form>
    <!--welcome-->
    <div class="welcome"></div>
  </div>
  <!--footer-->
  <div class="footer">
    <font>
      Copyright(C)2017-2018
    </font>
  </div>
</div>
</body>
</html>
