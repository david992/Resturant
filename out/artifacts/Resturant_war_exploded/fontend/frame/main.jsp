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
			*{
				font-size: 12px;
				color: dimgray;
			}
			a{
				display: block;
				float: left;
				text-decoration: none;
				
			}
			.main{
				width: 1200px;
				height: 580px;
				margin: auto;
			}
			span{
				color: red;
				font-weight: bold;
				font-size: 14px;
			}
			.main{
				width: 1200px;
				height: 580px;
				margin: auto;
			}
			
			.content{
				width: 910px;
				height: 570px;
				margin: auto;
				
			}
			
			.food{
				width: 649px;
				height: 569px;
				float: left;
				border-bottom: 1px darkgray solid;
				border-right: 1px darkgray solid;
			}
			.food_desc{
				width: 300px;
				height: 190px;
				float: left;
			}
			.food_descimg{
				margin-top: 15px;
				margin-left: 5px;
				width: 150px;
				height: 140px;
				float: left;
				border: 1px black solid;
			}
			.food_desc font{
				margin-top: 15px;
				width: 130px;
				height: 140px;
				line-height: 16px;
				float: left;
				background-color: white;
			}
			.cart{
				margin-left: 3px;
				margin-top: 12px;
				width:77px;
				height: 20px;
				
			}
			.desc{
				width: 260px;
				height: 570px;
				float: left;
				
			}
			.notice{
				width: 245px;
				height: 220px;
				float: left;
				margin-left: 15px;
				
			}
			.notice_title{
				width: 245px;
				height: 40px;
				float: left;
				
			}
			.notice_logo{
				margin-top: 5px;
				width: 240px;
				height: 40px;
				float: left;
				background-image: url(../img/bg.jpg);
				background-repeat: no-repeat;
			}
			.notice_logo a{
				width: 42px;
				height: 40px;
				display: block;
				float: right;
				line-height: 45px;
				
			}
			h1{
				margin-left: 50px;
				display: block;
				float: left;
				font-size: 18px;
				color: orange;
			}
			.notice_link{
				width: 240px;
				height: 170px;
				float: left;
				
			}
			li{
				list-style: url(../img/43.gif); 
				float: left;
			}
			.notice_link a{
				width: 120px;
				height: 22px;
				
			}
			.notice_link p{
				margin: 0px;
				width: 70px;
				height: 22px;
				display: block;
				float: left;
				
			}
			.foodcar{
				width: 245px;
				height: 160px;
				float: left;
				margin-left: 15px;
			}
			.foodcar_logo{
				margin-top: 5px;
				width: 244px;
				height: 40px;
				float: left;
				background-image: url(../img/dingcanche.jpg);
				background-repeat: no-repeat;
			}
			.foodcar_logo p{
				width: 110px;
				height: 40px;
				display: block;
				float: right;
				line-height: 45px;
				
			}
			#backgroundcolor{
				background-color: #FEF0D3;
			}
			table{
				border: 0px;
			}
			.td1{
				text-align: center;
				width: 120px;
				height: 20px;
			}
			.td2{
				text-align: center;
				width: 58px;
				height: 20px;
			}
			form table tr td p{
				margin: 0px;
			}
			.td3{
				
				padding-left:90px ;
				width: 140px;
				height: 23px;
			}
			form table tr td a input{
				margin-right: 8px;
			}
			.rank{
				width: 245px;
				height: 200px;
				float: left;
				margin-left: 15px;
				
			}
			.rank_title{
				width: 245px;
				height: 42px;
				float: left;
				border-bottom: 1px darkred dashed;
				
			}
			.rank_logo{
				margin-top: 5px;
				margin-left: 8px;
				width: 240px;
				height: 40px;
				float: left;
				background-image: url(../img/sale.jpg);
				background-repeat: no-repeat;
			}
			.rank_logo a{
				width: 170px;
				height: 21px;
				display: block;
				float: right;
				line-height: 21px;
				
			}
			.rank_link p{
				margin: 0px;
				width: 65px;
				height: 21px;
				background-color: pink;
			}
		</style>
	</head>
	<body>
		<div class="main">
			<!--content-->
			<div class="content">
				<!--菜单-->
				<div class="food">
					<div class="food_desc">
						<a href=""> <img class="food_descimg" src="../img/1253519531.jpg" /> </a>
						
						<font>
							菜名：<h3>农家小炒肉</h3> 
							<br />
							市场价格：26.0
							<br />
							会员价格:<span>22.0</span>
							<br />
							配料：青椒、瘦肉
							<br />
							菜品类型：川菜
						</font>
						<div class="cart">
							<a href=""> <img  class="cart" src="../img/cart.png" /> </a>
						</div>
					</div>
					<div class="food_desc">
						<a href=""> <img class="food_descimg" src="../img/1253519531.jpg" /> </a>
						
						<font>
							菜名：<h3>农家小炒肉</h3> 
							<br />
							市场价格：26.0
							<br />
							会员价格:<span>22.0</span>
							<br />
							配料：青椒、瘦肉
							<br />
							菜品类型：川菜
						</font>
						<div class="cart">
							<a href=""> <img  class="cart" src="../img/cart.png" /> </a>
						</div>
					</div>
					<div class="food_desc">
						<a href=""> <img class="food_descimg" src="../img/1253519531.jpg" /> </a>
						
						<font>
							菜名：<h3>农家小炒肉</h3> 
							<br />
							市场价格：26.0
							<br />
							会员价格:<span>22.0</span>
							<br />
							配料：青椒、瘦肉
							<br />
							菜品类型：川菜
						</font>
						<div class="cart">
							<a href=""> <img  class="cart" src="../img/cart.png" /> </a>
						</div>
					</div>
					<div class="food_desc">
						<a href=""> <img class="food_descimg" src="../img/1253519531.jpg" /> </a>
						
						<font>
							菜名：<h3>农家小炒肉</h3> 
							<br />
							市场价格：26.0
							<br />
							会员价格:<span>22.0</span>
							<br />
							配料：青椒、瘦肉
							<br />
							菜品类型：川菜
						</font>
						<div class="cart">
							<a href=""> <img  class="cart" src="../img/cart.png" /> </a>
						</div>
					</div>
					<div class="food_desc">
						<a href=""> <img class="food_descimg" src="../img/1253519531.jpg" /> </a>
						
						<font>
							菜名：<h3>农家小炒肉</h3> 
							<br />
							市场价格：26.0
							<br />
							会员价格:<span>22.0</span>
							<br />
							配料：青椒、瘦肉
							<br />
							菜品类型：川菜
						</font>
						<div class="cart">
							<a href=""> <img  class="cart" src="../img/cart.png" /> </a>
						</div>
					</div>
					<div class="food_desc">
						<a href=""> <img class="food_descimg" src="../img/1253519531.jpg" /> </a>
						
						<font>
							菜名：<h3>农家小炒肉</h3> 
							<br />
							市场价格：26.0
							<br />
							会员价格:<span>22.0</span>
							<br />
							配料：青椒、瘦肉
							<br />
							菜品类型：川菜
						</font>
						<div class="cart">
							<a href=""> <img  class="cart" src="../img/cart.png" /> </a>
						</div>
					</div>
					
				</div>
				<!--详情-->
				<div class="desc">
					<!--公告-->
					<div class="notice">
						<div class="notice_title">
							<div class="notice_logo">
								<h1>餐厅公告</h1>
								<a href="">  更多>>  </a>
							</div>
							<div class="notice_link">
								<ul>
									<li> <a href=""> 新增菜单《糖醋排骨》  </a> </li> <p>2017-06-26</p>
									<li> <a href=""> 新增菜单《糖醋排骨》  </a> </li> <p>2017-06-26</p>
									<li> <a href=""> 新增菜单《糖醋排骨》  </a> </li> <p>2017-06-26</p>
									<li> <a href=""> 5.16特价菜 </a> </li> <p>2017-06-26</p>
									<li> <a href=""> 4.22特色菜  </a> </li><p>2017-06-26</p>
									<li> <a href=""> 新增菜单《糖醋排骨》  </a> </li><p>2017-06-26</p>
									<li> <a href=""> 4.21特色菜  </a> </li> <p>2017-06-26</p>
								</ul>	
							</div>
						</div>
					</div>
					<!--餐车-->
					<div class="foodcar">
						<div class="foodcar_title">
							<div class="foodcar_logo">
								<h1>我的餐车</h1>
								<p>SHOPPING&nbsp;CART</p>
							</div>
							<form>
								<table border="1px">
									<tr id="backgroundcolor">
										<td class="td1">
											<p>菜单名称</p>
										</td>
										<td class="td2">
											<p>单价</p>
										</td>
										<td class="td2">
											<p>数量</p>
										</td>
									</tr>
									<tr>
										<td class="td1">
											
										</td>
										<td class="td2">
										
										</td>
										<td class="td2">
										
										</td>
									</tr>
									<tr>
										<td class="td1">
											小&nbsp;&nbsp;计：
										</td>
										<td  class="td2">
											<span>0.0元</span>
										</td>
										<td class="td2">
											<span>0份</span>
										</td>
									</tr>
									<tr>
										<td colspan="3" class="td3">
											<a href=""><input  type="image" src="../img/canche_submit.gif" alt="submit"/></a>
											
											<a href=""><input  type="image" src="../img/quxiao2.gif" alt="reset" /></a>
										</td>
									</tr>
								</table>
							</form>
						</div>	
					</div>
					<!--排行-->
					<div class="rank">
						<div class="rank_title">
							<div class="rank_logo">
								<h1>销售排行榜</h1>
								
							</div>
							<div class="notice_link">
								<ul>
									<li> <a href=""> 糖醋排骨  </a> </li> <p>已销售12次</p>
									<li> <a href=""> 酸辣土豆丝  </a> </li><p>已销售10次</p>
									<li> <a href=""> 农家小炒肉  </a> </li><p>已销售7次</p>
									<li> <a href=""> 水煮鱼  </a> </li><p>已销售6次</p>
									<li> <a href=""> 特色菜  </a> </li> <p>已销售3次</p>
									<li> <a href=""> 五香牛肉  </a> </li><p>已销售1次</p>
								</ul>	
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
	</body>
</html>
