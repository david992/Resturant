<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<style>
		body{
			margin: 0px;
		}
			.main{
				width: 1035px;
				height: 760px;
				margin: auto;
			}
			.dingbu{
				width: 1035px;
				height:185px ;
				border: 1px solid black;
			}
			.chaxun{
				width: 1035px;
				height: 160px;
				margin: 0px;
			}
			.chajieguo{
				width: 1035px;
				height: 400px;
			}
			.dibu{
				width:1035px ;
				height: 50px;
				border: 1px solid black;
			}
			.btn_class{
				border-bottom: none;
				border: 0px;
				color: gray;
				background-color: white;
			}
			td{
				color: dimgray;
			}
		</style>
	</head>
	<body>
		<div class="main">
			
			<div class="chaxun">
					<table align="center" border="1px" width="575px" height="100px" cellspacing="0">
						<tr>
						<th align="center">
							<b>按菜品名称查询</b>
							<input type="text" >
							<input type="button" value="查询">
						</th>	
						</tr>
						<tr>
						<th align="center">
							<b>按销售时间查询</b>
							<input type="text">
							<input type="button" value="查询">
						</th>	
						</tr>
						<tr>
						<td align="center">
							<input type="button"  class="btn_class" value="我的所有订单">
							<input type="button" value="未派送订单" class="btn_class">
							<input type="button" value="已派送订单" class="btn_class">
						</td>	
						</tr>
					</table>
			</div>
			<div class="chajieguo">
				<form>
					<table border="1px" cellspacing="0" width="1035" height="400">
						<tr>
							<th colspan="9"><b>订单查询结果信息列表</b></th>
						</tr>
						<tr>
							<th align="center"><b>菜品名称</b></th>
							<th align="center"><b>真实姓名</b></th>
							<th align="center"><b>订购电话</b></th>
							<th align="center"><b>派送地址</b></th>
							<th align="center"><b>订购数量</b></th>
							<th align="center"><b>单价（元）</b></th>
							<th align="center"><b>合计（元）</b></th>
							<th align="center"><b>订购时间</b></th>
							<th align="center"><b>是否派送</b></th>
							
						</tr>
						<tr>
							<td align="center">菜品名称</td>
							<td align="center">真实姓名</td>
							<td align="center">订购电话</td>
							<td align="center">派送地址</td>
							<td align="center">订购数量</td>
							<td align="center">单价（元）</td>
							<td align="center">合计（元）</td>
							<td align="center">订购时间</td>
							<td align="center">是否派送</td>
						</tr>
						<tr>
							<td align="center">菜品名称</td>
							<td align="center">真实姓名</td>
							<td align="center">订购电话</td>
							<td align="center">派送地址</td>
							<td align="center">订购数量</td>
							<td align="center">单价（元）</td>
							<td align="center">合计（元）</td>
							<td align="center">订购时间</td>
							<td align="center">是否派送</td>
						</tr>
						<tr>
							<td align="center">菜品名称</td>
							<td align="center">真实姓名</td>
							<td align="center">订购电话</td>
							<td align="center">派送地址</td>
							<td align="center">订购数量</td>
							<td align="center">单价（元）</td>
							<td align="center">合计（元）</td>
							<td align="center">订购时间</td>
							<td align="center">是否派送</td>
						</tr>
						<tr>
							<td align="center">菜品名称</td>
							<td align="center">真实姓名</td>
							<td align="center">订购电话</td>
							<td align="center">派送地址</td>
							<td align="center">订购数量</td>
							<td align="center">单价（元）</td>
							<td align="center">合计（元）</td>
							<td align="center">订购时间</td>
							<td align="center">是否派送</td>
						</tr>
						<tr>
							<td align="center">菜品名称</td>
							<td align="center">真实姓名</td>
							<td align="center">订购电话</td>
							<td align="center">派送地址</td>
							<td align="center">订购数量</td>
							<td align="center">单价（元）</td>
							<td align="center">合计（元）</td>
							<td align="center">订购时间</td>
							<td align="center">是否派送</td>
						</tr>
						<tr>
							<td align="center">菜品名称</td>
							<td align="center">真实姓名</td>
							<td align="center">订购电话</td>
							<td align="center">派送地址</td>
							<td align="center">订购数量</td>
							<td align="center">单价（元）</td>
							<td align="center">合计（元）</td>
							<td align="center">订购时间</td>
							<td align="center">是否派送</td>
						</tr>
						<tr>
							<td align="center">菜品名称</td>
							<td align="center">真实姓名</td>
							<td align="center">订购电话</td>
							<td align="center">派送地址</td>
							<td align="center">订购数量</td>
							<td align="center">单价（元）</td>
							<td align="center">合计（元）</td>
							<td align="center">订购时间</td>
							<td align="center">是否派送</td>
						</tr>
					</table>
				</form>
			</div>
			
		</div>
	</body>
</html>
