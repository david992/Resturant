<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<style>
			body{
				margin: 0px;
			}
			*{
				font-size: 12px;
				color: dimgray;
			}
			a{
				display: block;
				float: left;
				text-decoration: none;
			}
			.main{
				width: 1200px;
				height: 130px;
				margin: auto;
			}
			.header{
				width: 910px;
				height: 125px;
				margin: auto;
				border-bottom: 5px solid orangered;
			}
			.top{
				width: 910px;
				height: 25px;
				float: left;
				margin-left: 500px;
				background-image: url(../img/topmenu_bg.jpg);
				background-repeat: no-repeat;
			}
			.top a{

				width: 60px;
				height: 25px;
				line-height: 25px;
			}
			.menu{
				width: 910px;
				height: 100px;
				float: left;
			}
			.logo{
				width: 211px;
				height: 84px;
				float: left;
				margin-top: 16px;
				background-image: url(../img/1257477260.gif);
				background-repeat: no-repeat;
			}
			.tipe{
				width: 400px;
				height: 30px;
				float: left;
				margin-top: 20px;
				margin-left: 200px;
			}
			font{
				color: orangered;
				font-size: 16px;
				font-weight: bold;
			}
			.menu_link{
				width: 690px;
				height: 41px;
				margin-top: 10px;
				float: left;
			}
			.menu_link a{
				width: 95px;
				height: 40px;
				color: white;
				font-size: 14px;
				font-weight: bold;
				text-align: center;
				line-height: 40px;
				background-image:url(../img/menu.jpg);
				background-repeat: no-repeat;
			}
			.menu_link a:hover{
				background-image:url(../img/menu_hover.jpg);
				background-repeat: no-repeat;
			}
		</style>
		<!-- 导入jquery插件 -->
		<script type="text/javascript" src="../js/jquery-1.11.0.js"></script>
		<script type="text/javascript" src="../js/jquery-migrate-1.2.1.js"></script>
		<script type="text/javascript">

            $(function(){

                $("#exit1").click(function(){
                    /** parent从主界面进行退出,避免局部刷新*/
                    parent.location = "${pageContext.request.contextPath}/fontend/logout";
                })
                $("#exit2").click(function(){
                    /** parent从主界面进行退出,避免局部刷新*/
                    parent.location = "${pageContext.request.contextPath}/fontend/logout";
                })
            })

		</script>
	</head>
	<body>
		<div class="main">
			<!--header-->
			<div class="header">
				<!--头-->
				<div class="top">
					<a style="margin-left: 40px;" href="../login.jsp" target="main">会员登录  |  </a>
					<a href="../register.jsp" target="main">会员注册  | </a>
					<a href="javascript:void(0);" id="exit1" >注销登录  | </a>
					<a href="../menu_link/delivery.jsp" target="main">配送说明  | </a>
					<a href="../menu_link/aboutus.jsp" target="main">关于我们</a>
				</div>
				<!--导航-->
				<div class="menu">
					<div class="logo">
					</div>
					<div class="tipe">
						<font id="welcome">
							<%if(request.getSession().getAttribute("user")!=null)  { %>
								亲爱的 ${user.username}您好，欢迎光临！
							<%} %>
						</font>
					</div>
					<div class="menu_link">
						<a href="main.jsp" target="main">首页   </a>
						<a href="../my/myfoodcar.jsp" target="main">我的餐车</a>
						<a href="../my/myorder.jsp" target="main">我的订单 </a>
						<a href=""  target="main">用户中心</a>
						<a href="../menu_link/delivery.jsp" target="main">配送说明</a>
						<a href="../menu_link/aboutus.jsp" target="main">关于我们</a>
						<a href="javascript:void(0);" id="exit2" >注销退出</a>
					</div>
				</div>
			</div>
		</div>

	</body>
</html>
