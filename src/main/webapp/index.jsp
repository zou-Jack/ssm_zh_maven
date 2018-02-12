<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	String appPath = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>图书管理系统-首页</title>
<style type="text/css">
body {text-align:center}
h2 {color:red}
</style>
</head>
<body>
	<h2>SSM_BookSystem --- 整合示例</h2>
	简单的查询、删除等基础功能
	<br /> 日期：2018-02-10 22:30:51
	<br /> 作者：Zoutao
	<br /> 博客：
	<a href="http://blog.csdn.net/ITBigGod" target="_blank">柒晓白</a>
	<br />
	<br />
	<br />
	<br /> 图书管理系统：
	<a href="<%=appPath%>/book/list">点击前往</a>
</body>
</html>