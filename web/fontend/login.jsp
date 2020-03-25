<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<style>
			body{
				margin: 0px;
				font-size: 12px;
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
				width: 660px;
				height: 270px;
				border: 1px coral solid;
				margin: 80px 100px;
				background-color:burlywood;
			}
			.fro_1{
				width: 250px;
				height: 130px;
				border: 1px coral solid;
				float: left;
				margin: 10px;
				background-color: white;
			}
			.fro_2{
				width: 330px;
				height: 130px;
				border: 1px coral solid;
				float: left;
				margin: 10px;
				background-color: white;
			}
			.fro_1_1{
				width: 200px;
				height: 90px;
				margin: 20px;
				/*border: 1px black solid;*/
			}
			.tab_1{
				font-size: 12px;
			}
			.tab_2{
				width: 270px;
				height: 90px;
				/*border: 1px blueviolet solid;*/
				margin: 20px;
				font-size: 12px;
			}
			.tab_2_1{
				width: 270px;
				height: 30px;
			}
			a{
				text-decoration: none;
			}
			li{
				text-align: center;
				list-style: none;
				color: red;
			}
		</style>
		<script type="text/javascript" src="js/jquery-1.11.0.js"></script>
		<script type="text/javascript" src="js/jquery-migrate-1.2.1.js"></script>
		<script src="js/ligerUI/js/core/base.js" type="text/javascript"></script>
		<script src="js/ligerUI/js/plugins/ligerDialog.js" type="text/javascript"></script>
		<script src="js/ligerUI/js/plugins/ligerDrag.js" type="text/javascript"></script>
		<script src="js/ligerUI/js/plugins/ligerResizable.js" type="text/javascript"></script>
		<script type="text/javascript">

            $(function(){
                /** 按了回车键 */
                $(document).keydown(function(event){
                    if(event.keyCode == 13){
                        $("#login-submit-btn").trigger("click");
                    }
                })
                $(function(){




                /** 给登录按钮绑定点击事件  */
                $("#login-submit-btn").on("click",function(){
                    /** 校验登录参数 ctrl+K */
                    var username = $("#username").val();
                    var password = $("#password").val();

                    var msg = "";

                    if(!/^\w{5,20}$/.test(username)){
                        msg = "登录名长度必须是5~20之间";
                    }else if(!/^\w{5,30}$/.test(password)){
                        msg = "密码长度必须是5~20之间";
                    }
                    if(msg !=""){
                        alert(msg);
                        return;
                    }

					/** 提交表单 */
					$("#login").submit();

                })

            })



		</script>
	</head>
	<body>
		<div class="zhuye">
			<div class="mian">
				<div class="top">
					
				<div class="center">
					<div class="fro">
						<div class="fro_1">
							<div class="fro_1_1">
								<form id="login" action="user" method="post">
									<input type="hidden" name="method" value="login">
								<table width="190px" height="80px" border="0px" cellpadding="0px" cellspacing="0px">

										<tr class="tab_1">
											<td >登录账号</td>
											<td>
												<input id="username" name="username" type="text" style="width: 100px;"/>

											</td>
										</tr>
										<tr class="tab_1">
											<td >登录密码</td>
											<td><input id="password" name="password" type="password" style="width: 100px;"/></td>
										</tr>
									<tr>
										<td colspan="2"><li>${msg}</li></td>
									</tr>
										<tr>
											<td></td>
											<td><input id="login-submit-btn" type="submit" value="登录" style="background-color:coral;"/>
												&nbsp;&nbsp;
												<a href="register.jsp" ><input type="button" value="注册" style="color: red;"/> </a></td>
										</tr>

								</table>
								</form>
							</div>
						</div>
						<div class="fro_2">
							<div class="fro_2_1">
								<div class="tab_2">
									<div class="tab_2_1">
									<img src="img/cateitems.gif" />如果你已是会员,请在左侧登录<br /></div>
									<div class="tab_2_1">
									<img src="img/cateitems.gif" />如果你还没有注册会员，<a href="register.jsp" style="color:#FF7F50;">请点击这里注册新会员</a><br /></div>
									<div class="tab_2_1">
									<img src="img/cateitems.gif" />如果你忘记了密码，<a href="#" style="color: chartreuse;">请点击这里重设一个密码</a></div>
								</div>
							</div>
						</div>
					</div>
				</div>
				
			</div>
		</div>
		</div>
	</body>
</html>
