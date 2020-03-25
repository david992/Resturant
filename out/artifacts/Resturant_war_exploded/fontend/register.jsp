<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title></title>
		<style>
			body{
				margin: 0px;
			}
			.zhuye{
				width: 1399px;
				height: 716px;
				/*border: 1px darkcyan solid;*/
				margin: auto
			}
			.mian{
				width: 900px;
				height: 716px;
				/*border: 1px navajowhite solid;*/
				margin: auto
			}
			.top{
				width: 900px;
				height: 130px;
			}
			
			.center{
				width: 900px;
				height: 450px;
			}
			.fro{
				width: 700px;
				height: 325px;
				/*border: 1px darkcyan solid;*/
				margin: 80px 100px;
			}
			.tab_1{
				font-size: 12px;
			}
			
		</style>
	</head>
	<body>
		<div class="zhuye">
			<div class="mian">
				<div class="top">
					
				<div class="center">
					<div class="fro">
						<form   name="createuser" action="user" method="post">
							<input type="hidden" name="method" value="create">

						<table width="700px" height="325px" border="1px" cellpadding="0px" cellspacing="0px">

								<tr class="tab_1">
									<td colspan="3" align="center">请填写用户信息(带<span style="color: red;">*</span>为必填项)</td>
								</tr>
								<tr class="tab_1">
									<td align="right" style="color:#DAA520;">用户名：</td><td><input name="username" type="text"/></td><td><span style="color: red;">*</span>您用来登录的用户名</td>
								</tr>
								<tr class="tab_1">
									<td align="right" style="color:#DAA520;">密码：</td><td><input name="password" type="password"/></td><td><span style="color: red;">*</span>长度必须大于5小于16个字符)</td>
								</tr>
								<tr class="tab_1">
									<td align="right" style="color:#DAA520;">确认密码：</td><td><input type="password"/></td><td><span style="color: red;">*</span>请将输入的密码再次输入</td>
								<tr class="tab_1">
									<td align="right" style="color:#DAA520;">真实姓名：</td><td><input name="name" type="text"/></td><td><span style="color: red;">*</span>请填写您的真实姓名</td>
								</tr>
								<tr class="tab_1">
									<td align="right" style="color:#DAA520;">性别：</td><td><input name="sex" type="radio" value="0"/>男<input name="sex" type="radio" value="1"/>女</td><td><span style="color: red;">*</span>请填写您的真实信息</td>
								</tr>
								<tr class="tab_1">
									<td align="right" style="color:#DAA520;">年龄：</td><td><input name="age" type="text"/></td><td><span style="color: red;">*</span>请填写您的真实年龄</td>
								</tr>
								<tr class="tab_1">
									<td align="right" style="color:#DAA520;">身份证号：</td><td><input name="idcard" type="text"/></td><td><span style="color: red;">*</span>请填写您的真实信息</td>
								</tr>
								<tr class="tab_1">
									<td align="right" style="color:#DAA520;">家庭地址：</td><td><input name="address" type="text"/></td><td><span style="color: red;">*</span>请填写您的真实信息</td>
								</tr>
								<tr class="tab_1">
									<td align="right" style="color:#DAA520;">电话号码：</td><td><input name="phone" type="text"/></td><td><span style="color: red;">*</span>请填写您的真实信息（格式为02411111111或13911111111）</td>
								</tr>
								<tr class="tab_1">
									<td align="right" style="color:#DAA520;">电子邮箱：</td><td><input name="email" type="text"/></td><td><span style="color: red;">*</span>请填写您有效的邮件地址，以便我们为您提供有效的服务</td>
								</tr>
								<tr class="tab_1">
									<td align="right" style="color:#DAA520;">邮政编码：</td><td><input name="postnumber" type="text"/></td><td><span style="color: red;">*</span>请填写您的真实信息（格式为111111）</td>
								</tr>
								<tr>
									<td colspan="3" align="center"><input type="submit" value="注册" ></td>
								</tr>

						</table>
						</form>
					</div>
				</div>
				
			</div>
		</div>
		</div>
	</body>
</html>
