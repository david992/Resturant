<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
				height: 300px;
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
			<!--content-->
			<div class="content">
				<div class="title">
					<h4> 添加公告</h4>
				</div>
				<form  name="addnotice" action="addnotice" method="post">
					<table cellspacing="0">
						<tr>
							<th>
								公告标题：
							</th>
							<td>
								<input name="title" style="width:200px;height:25px;float: left;" type="text" />
							</td>
						</tr>
						<tr>
							<th>
								公告内容：
							</th>
							<td width="600px" height="200px">
								<textarea style="float: left"  name="content" cols="80" rows="15"></textarea>

							</td>
						</tr>
						<tr>
							<td colspan="2">
								<input type="submit" value="添加"/>
							</td>
						</tr>
					</table>
				</form>
			</div>
		</div>
	</body>
</html>
