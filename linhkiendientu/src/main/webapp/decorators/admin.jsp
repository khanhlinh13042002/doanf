<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><dec:title default="Dashboard - Home" /></title>
<link rel="stylesheet"
	href="<c:url value='/template/admin/css/main.css'/>" type="text/css">
<!-- Font-icon css-->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="<c:url value = '/template/admin/css/product.css'/>">
</head>
<body class="app sidebar-mini">

	<!-- header -->
	<%@include file="/common/admin/header.jsp"%>
	<!-- header -->
	<!-- menu -->
	<%@include file="/common/admin/menu.jsp"%>
	<!-- menu -->
	<div id="content">
		<dec:body />
	</div>

	<script src="<c:url value='/template/admin/js/jquery-3.3.1.min.js'/>"></script>
	<script></script>
	<script src="<c:url value='/template/admin/js/popper.min.js'/>"></script>
	<script src="<c:url value='/template/admin/js/bootstrap.min.js'/>"></script>
	<script src="<c:url value='/template/admin/js/main.js'/>"></script>
	<!-- The javascript plugin to display page loading on top-->
	<script src="<c:url value='/template/admin/js/plugins/pace.min.js'/>"></script>
	<!-- Page specific javascripts-->
</body>
</html>