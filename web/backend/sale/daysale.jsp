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
				width: 800px;
				height: 200px;
				border: 1px solid #CCCCCC;
			}
			td,th{
				text-align: center;
				border: 1px solid #CCCCCC;
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
				<form >
					<tr>
						<th colspan="3">本日销售额统计</th>
					</tr>
					<tr>
						<th>菜品名称</th>
						<th>订购数量</th>
						<th>单价</th>
					</tr>
					<tr>
						<th colspan="3">本日销售总额:0元</th>
					</tr>
				</form>
			</table>
		</div>
	</body>
</html>
