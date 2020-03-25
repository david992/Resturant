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
		</style>
	</head>
	<body>
		<div class="zhuye">
			<div class="mian">
				<div class="top">
					<div class="center">
					<table border="1" cellpadding="0px" cellspacing="0px" width="700" height="32">
					<tr>
						<th colspan="4">我的订餐信息列表</th>
					</tr>
					<tr>
						<th>菜品</th>
						<th>单价</th>
						<th>数量</th>
	                    <td>&nbsp;</td>
					</tr>
					<tr align="center">
						<td>黄瓜拉皮</td>
						<td>6.0</td>
						<td>1</td>
	                    <td>取消</td>
					</tr>
					<tr align="center">
						<td>咸肉菜饭</td>
						<td>12.0</td>
						<td>1</td>
	                    <td>取消</td>
					</tr>
					<tr>
						<td colspan="4" align="center">小计:18.0元     共:2份</td>
					</tr>
					<tr>
						<td colspan="4" align="center">
							<img src="../../sifangcai/img/canche_submit.gif"/>
							<img src="../img/quxiao2.gif"/>
						</td>
					</tr>
					</table>
					</div>
			</div>
		</div>
		</div>
	</body>
</html>
