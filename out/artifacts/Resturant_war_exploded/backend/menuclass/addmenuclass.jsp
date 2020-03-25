<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="../css/back.css" />
		<style>
			table{
				margin-top: 60px;
				width: 800px;
				height: 100px;
				border: 1px solid #CCCCCC;
			}
			td,th{
				
				text-align: center;
				border: 1px solid #CCCCCC;
			}
			th{
				text-align: right;
			}
			.td1{
				text-align: left;
			}
		</style>
	</head>
	<body>
		<div class="main">
			<!--标题-->
			<div class="content">
				<div class="title">
					<h4> 添加类别</h4>
				</div>
			</div>
			<!--内容表格-->
			<form action="../menu_class" method="post">
				<input type="hidden" name="method" value="create">
				<table cellspacing="0">
					<tr>
						<th>菜品类别：</th>
						<td  class="td1" >
							<input style="width:290px;float: left;" type="text" name="food_class_name" />
						</td>
					</tr>
					<tr >
						<td colspan="2" ><input type="submit" value="添加"/></td>
					</tr>
				</table>
			</form>
		</div>
	</body>
</html>
