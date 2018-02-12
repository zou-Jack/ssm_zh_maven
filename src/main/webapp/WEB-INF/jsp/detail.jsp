<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String appPath = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>图书详情页</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- jQuery务必在bootstrap.min.js 之前引入  -->
<script src="https://code.jquery.com/jquery.js"></script>
<!-- 引入 Bootstrap -->
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
					<li><a href="<%=appPath%>/book/list">首页</a></li>
					<li class="active"><a href="<%=appPath%>/book/detail/1003">图书具体信息</a></li>
					<li class="disabled"><a href="#">信息</a></li>
				</ul>
			</div>
		</div>
		<div class="row clearfix">
			<div class="col-md-12 column">
				<div class="page-header">
					<h1>
						图书详情 <small>显示当前图书详细信息</small>
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
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>${requestScope.get('book').bookId}</td>
							<td>${requestScope.get('book').name}</td>
							<td>${requestScope.get('book').number}</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div class="row clearfix">
			<div class="col-md-12 column">
				<p>
					<em>《${requestScope.get('book').name}》</em>
					${requestScope.get('book').detail}
				</p>
			</div>
		</div>
	</div>
</body>
</html>