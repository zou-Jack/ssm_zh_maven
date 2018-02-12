<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!--说明：
  User: Zoutao
  Date: 2018/2/10
  note: 使用bootstrap做后台，返回requestScope对象 
 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% String appPath = request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>图书列表页</title>
<!-- jQuery务必在bootstrap.min.js 之前引入  -->
	<script src="https://code.jquery.com/jquery.js"></script>
<!-- 引入 Bootstrap-采用官网给的CDN服务器远程引入 -->
<link
	href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<div class="page-header">
					<h1>
						Zoutao <small>图书管理系统——ssm整合示例</small>
					</h1>
				</div>
			</div>
		</div>
		<div class="row clearfix">
			<div class="col-md-12 column">
				<ul class="nav nav-tabs">
					<li class="active"><a href="<%=appPath%>/book/list">首页</a></li>
					<li><a href="<%=appPath%>/book/detail/1000">图书具体信息</a></li>
					<li><a href="<%=appPath%>/add.jsp">添加图书信息</a></li>
					<li class="disabled"><a href="#">信息</a></li>
				</ul>
			</div>
		</div>
		<div class="row clearfix">
			<div class="col-md-12 column">
				<div class="page-header">
					<h1>
						图书列表 <small>显示当前图书库存信息</small>
					</h1>
				</div>
			</div>
		</div>
		<div class="row clearfix">
			<div class="col-md-12 column">
				<table class="table table-hover table-striped">
					<thead>
						<tr>
							<th>图书编号</th>
							<th>图书名字</th>
							<th>图书数量</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="book" items="${requestScope.get('list')}"
							varStatus="status">
							<tr>
								<td>${book.bookId}</td>
								<td>${book.name}</td>
								<td>${book.number}</td>
								<td><a href="<%=appPath%>/book/detail/${book.bookId}">详情</a>
									| <a href="<%=appPath%>/book/del/${book.bookId}">删除</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>