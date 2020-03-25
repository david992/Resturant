<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>订餐系统后台顶部</title>
		<style>
		body{
			margin: 0px;
		}
		*{
			font-size: 12px;
		}
			.top{
				width: 1900px;
				height: 64px;
				float: left;
				background-image: url(../img/top-right.gif);
			}
			.logo{
				width: 262px;
				height: 64px;
				float: left;
				background-image: url(../img/logo.gif);
				background-repeat: no-repeat;
			}
			.top p{
				width: 240px;
				height: 20px;
				display: block;
				float: left;
				color: white;
				font-weight: bold;
				margin-left: 500px;
			}
			.top input{
				display: block;
				float: left;
				font-weight: bold;
				background-color: #163859;
				color: #B8D3EB;
				margin-left: 150px;
				border: 0px;
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
	<body >
		<div class="top">
			<div class="logo">
			</div>	
			<p> 管理员：  ${user.systemusername}  你好，感谢登陆使用！ </p>
			<a href="javascript:void(0);" id="exit" > <img style="margin-top: 10px" src="../img/out.gif" /> </a>
		</div>
	</body>
</html>
