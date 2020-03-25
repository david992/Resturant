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
				<form>
					<tr>
						<th colspan="11">销售订单查询信息列表</th>
					</tr>
					<tr>
						<th>用户ID</th>
						<th>真实姓名</th>
						<th>联系方式</th>
						<th>家庭地址</th>
						<th>菜品名称</th>
						<th>订购数量</th>
						<th>单价（元）</th>
						<th>合计（元）</th>
						<th>订购时间</th>
						<th>是否派送</th>
						<th>确认订单</th>
					</tr>
					<tr>
						<td>2</td>
						<td>2221</td>
						<td>13966666666</td>
						<td>天津市</td>
						<td>粉蒸肉</td>
						<td>2</td>
						<td>23</td>
						<td>46</td>
						<td>2015-07-26 12:16:28</td>
						<td>是</td>
						<td></td>
					</tr>
					<tr>
						<td>4</td>
						<td>1</td>
						<td>1</td>
						<td>1</td>
						<td>咸肉菜饭</td>
						<td>2</td>
						<td>12</td>
						<td>24</td>
						<td>2015-07-26 12:16:28</td>
						<td>是</td>
						<td></td>
					</tr>
					<tr>
						<td>4</td>
						<td>1</td>
						<td>1</td>
						<td>1</td>
						<td>糖醋排骨</td>
						<td>1</td>
						<td>24</td>
						<td>24</td>
						<td>2015-07-26 12:16:28</td>
						<td>是</td>
						<td></td>
					</tr>
					<tr>
						<td>4</td>
						<td>1</td>
						<td>1</td>
						<td>1</td>
						<td>五香驴肉</td>
						<td>1</td>
						<td>21</td>
						<td>21</td>
						<td>2015-07-26 12:16:28</td>
						<td>是</td>
						<td></td>
					</tr>
					<tr>
						<td>2</td>
						<td>2221</td>
						<td>13988888888</td>
						<td>天津市</td>
						<td>咸肉菜饭</td>
						<td>1</td>
						<td>12</td>
						<td>12</td>
						<td>2015-07-26 12:16:28</td>
						<td>是</td>
						<td></td>
					</tr>
					
					<tr>
						<td colspan="11">第一页 共两页 【首页】 【尾页】 【上一页】 【下一页】</td>
					</tr>
				</form>
			</table>
		</div>
	</body>
</html>
