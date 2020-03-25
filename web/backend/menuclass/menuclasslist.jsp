<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*" %>
<%@ page import="com.cn.model.MenuClassModel" %>

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
				height: 100px;
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
			<div class="content">
				<div class="title">
					<h4> 类别信息  </h4>
				</div>
			</div>

			<!--内容表格-->
			<table cellspacing="0">
				<tr>
					<th colspan="4">类别信息列表</th>
				</tr>
				<tr>
					<th>类别ID：</th>
					<th>类别名称</th>
					<th colspan="2">操作</th>
				</tr>
				<%--
                                <c:forEach items="${request.getSession().getAttribute(menuclassModels)}" var="menuclassModel" varStatus="stat" >
                                    <tr  >
                                        <td>${menuclassModel.id}</td>
                                        <td>${menuclassModel.food_class_name}</td>
                                        <td>修改</td>
                                        <td>删除</td>
                                    </tr>
                                </c:forEach>
                  --%>

                                <%
                                    List<MenuClassModel> menuclassModels = (List<MenuClassModel>)request.getSession().getAttribute("menuclassModels");
                                %>
                                <%
									if (menuclassModels != null){
										for(int i=0;i<menuclassModels.size();i++) {
											MenuClassModel menuclass = menuclassModels.get(i);
                                %>
                                      <tr >
                                        <td><%=menuclass.getId()%></td>
                                        <td><%=menuclass.getFood_class_name()%></td>
										  <td><a href="../menuclass/updatemenuclass.jsp" >修改</a></td>
										  <td><a href="/menu_class"  name="method" value="delete">删除</a></td>
                                    </tr>

                                <%}%>
						<%}%>
			</table>
		</div>
	</body>
</html>
