<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<style>
			body{
				margin: 0px;
				background-color: #EEF2FB;
			}
			*{
				color: #333333;
				font-family: "宋体";
				font-size: 12px;
			}
			.main{
				width: 1188px;
				height: 450px;
				float: left;
				border: 1px #9EAEB9 solid;
				background-color: #F7F8F9;
				border-radius: 5px;
				
			}
			.background{
				width: 1190px;
				height: 31px;
				float: left;
				background-image: url(../img/content-bg.gif);
				
			}
			.title{
				width: 85px;
				height: 29px;
				float: left;
				background-image: url(../img/top_bt.jpg);
				margin-left: 10px;
			}
			h4{
				width: 85px;
				height: 29px;
				display: block;
				float: left;
				text-align: center;
				line-height: 40px;
				margin: 0px;
			}
			table{
				margin-left: 10px;
				width: 1100px;
				height: 200px;
				border: 1px solid #CCCCCC;
			}
			td,th{
				text-align: center;
				border: 1px solid #CCCCCC;
			}
			a{
				text-decoration: none;
			}
			
		</style>
	</head>
	<body>
		<div class="main">
			<!--标题-->
			<div class="background">
				<div class="title">
					<h4> 菜品信息</h4>
				</div>
			</div>
			<!--内容表格-->

			<table cellspacing="0">
				<form action="menu" method="post" >
					<input type="hidden" name="method" value="select">
				<tr>
					<th colspan="11">菜单信息列表</th>
				</tr>
				<tr>
					<th>菜单名称</th>
					<th>展示图片</th>
					<th>原料</th>
					<th>类型</th>
					<th>说明</th>
					<th>市场价格</th>
					<th>市场价销售数量</th>
					<th>会员单价</th>
					<th>会员价销售数量</th>
					<th colspan="2">操作</th>
				</tr>
				<tr>
					<td>  menu_list.food_name  </td>
					<td>  menu_list.food_img_name</td>
					<td>  menu_list.material  </td>
					<td>  menu_class.food_class_name</td>
					<td>  menu_list.desc</td>
					<td>  menu_list.price</td>
					<td>  menu_list.</td>
					<td>  menu_list.vip_price</td>
					<td>  menu_list.</td>
					<td><a href="../menu/updatemenu.jsp" >修改</a></td>
					<td><a href="/menu"  name="method" value="delete">删除</a></td>
				</tr>
			</form>
			</table>
		</div>
	</body>
</html>
