<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>添加新菜单</title>
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
				width: 1190px;
				height: 450px;
				float: left;
				border: 1px #9EAEB9 solid;
				background-color: #F7F8F9;
				border-radius: 5px;
			}
			.content{
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
				margin-top: 60px;
				width: 800px;
				height: 300px;
				border: 1px solid #CCCCCC;
			}
			td,th{
				text-align:center;
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
			<!--content-->
			<div class="content">
				<div class="title">
					<h4> 添加菜品</h4>
				</div>
				<!--内容表格-->
				<form action="upload" enctype="multipart/form-data" method="post">

					<table cellspacing="0">
						<tr>
							<th >菜品名称：</th>
							<td class="td1" > <input style="width:290px;float: left;" type="text" name="food_name" /></td>
						</tr>
						<tr>
							<th >原&nbsp;&nbsp;料：</th>
							<td class="td1" > <input style="width:290px;float: left;" type="text" name="material" /></td>
						</tr>
						<tr>
							<th>市场价格：</th>
							<td  class="td1" ><input style="width:290px;float: left;" type="text" name="price" /></td>
						</tr>
						<tr>
							<th>会员价格：</th>
							<td  class="td1" ><input style="width:290px;float: left;" type="text" name="vip_price" /></td>
						</tr>
						<tr>
							<th>说&nbsp;&nbsp;明：</th>
							<td  class="td1" ><textarea name="des" cols="100" rows="10"></textarea>
						</tr>
						<tr>
							<th>菜品类别：</th>
							<td  class="td1" >
								<select  name="food_class_id" >
									<option value="1">  food_class_name  </option>
								</select>
							</td>
						</tr>
						<tr>
							<th>上传图片：</th>
							<td  class="td1" ><input type="file" name="myfile" /></td>
						</tr>
						<tr >
							<td colspan="2" ><input type="submit" value="添加"/></td>
						</tr>
					</table>
				</form>	
			</div>
		</div>
	</body>
</html>
