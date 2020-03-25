<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="css/back.css" />
		<style>
			table{
				margin-top: 35px;
				width: 800px;
				height: 120px;
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
					<h4> 管理员信息</h4>
				</div>
				<form action="user" method="get">

					<input type="hidden" name="method" value="update">
					<input type="hidden" name="id" value="${user.user_id}">
					<table cellspacing="0">
						<tr>
							<th>
								更改管理员信息
							</th>
						</tr>
						<tr>
							<th>
								管理员姓名<input type="text" name="username" />
							</th>
						</tr>
						<tr>
							<th>
								管理员密码<input type="password" name="password"/>
							</th>
						</tr>
						<tr>
							<td>
								<input type="submit" value="修改" />
							</td>
						</tr>
					</table>
				</form>
				
				
			</div>
		</div>
	</body>
</html>
