<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>网上订餐后台管理菜单</title>
		
		<script type="text/javascript" src="../js/miaov.js">
		</script>
		
		<style>
			body{
				margin: 0px;
				background-color: #EEF2FB;
			}
			*{
				font-family: "宋体";
				font-size: 12px;
			}
			li{
				list-style: none;
			}
			a{
				color: black;
				text-decoration: none;
			}
			.main{
				width: 210px;
				height: 700px;
				float: left;
				background-color: #EEF2FB;
			}
			.menu{
				text-align: center;
				margin: 0px;
				padding: 0px;
				width: 200px;
				overflow: hidden;
			}
			.menu h2 { 
				background-image: url(../img/menu_bg.gif);
				background-repeat: no-repeat;
				width: 182px; 
				height: 26px;
				float: left; 
				margin: 0px;
				cursor: pointer; 
			}
			.menu ul { 
				width: 200px; 
				height: 0px; 
				padding: 0px;
				display: none; 
				overflow:hidden; 
			}
			.menu  li{
				width: 182px;
				line-height: 26px;
				float: left;
				background-image: url(../img/menu_bg1.gif);
				background-repeat: no-repeat;

			}
			.menu ul li a { 
				display: block; 
				width: 182px;
				text-align: center; 
				float: left;
			}
			.menu ul li a:hover{
				width: 182px;
				background-image: url(../img/menu_bg2.gif);
				background-repeat: no-repeat;

			}
			.active{
				
				float: left;
			}
			.menu_line{
				width: 182px;
				height: 5px;
				float: left;
				background-image: url(../img/menu_topline.gif);
				background-repeat: no-repeat;
			}
		
		</style>
		<!-- 导入jquery插件 -->
		<script type="text/javascript" src="../js/jquery-1.11.0.js"></script>
		<script type="text/javascript" src="../js/jquery-migrate-1.2.1.js"></script>
		<script type="text/javascript">

            $(function(){



                $("#exit").click(function(){
                    /** parent从主界面进行退出,避免局部刷新*/
                    parent.location = "${pageContext.request.contextPath}/backend/logout";
                })
            })

		</script>
	</head>
	<body>
		<div class="main">
			<ul id="nav" class="menu" >
				<li>
			    	<h2 ><span>菜单管理</span></h2>
			        <ul>
			        	<div class="menu_line"></div>
			            <li><a href="../menu/addmenu.jsp" target="right">添加新菜单</a></li>
			            <li><a href="../menu/menulist.jsp" target="right">菜单信息列表</a></li>
			        </ul>
			    </li>
			    <li>
			    	<h2 ><span>菜单类别管理</span></h2>
			        <ul>
			        	<div class="menu_line"></div>
			            <li ><a href="../menuclass/addmenuclass.jsp" target="right">添加新类别</a></li>
			            <li><a href="../menu_class/index"  target="right">类别信息列表</a></li>
			        </ul>
			    </li>
			    <li>
			    	<h2 ><span>公告信息管理</span></h2>
			        <ul>
			        	<div class="menu_line"></div>
			            <li ><a href="../notice/addnotice.jsp" target="right">添加新通告</a></li>
			            <li><a href="../notice/noticelist.jsp" target="right">通告信息列表</a></li>
			        </ul>
			    </li>
			    <li>
			    	<h2><span >销售订单管理</span></h2>
			        <ul>
			        	<div class="menu_line"></div>
			            <li ><a href="../sale/salelist.jsp" target="right">销售订单信息列表</a></li>
			            <li><a href="../sale/selectsale.jsp" target="right">销售订单查询</a></li>
			            <li><a href="../sale/daysale.jsp" target="right">本日销售额统计</a></li>
			        </ul>
			    </li>
			    <li>
			    	<h2><span><a href="../user.jsp" target="right">系统用户管理</a></span></h2>
			    </li>
			    <li>
					<h2><span>  <a id="exit" href="javascript:void(0);">注销退出 </a> </span></h2>
			    </li>
			</ul>
		</div>	
	</body>
</html>
