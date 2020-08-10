<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>
</head>
<body>
	<%@ include file="header.jsp"%>
	<div class="container">
		<h2 style="margin: 0 0 1em 0;">HOME</h2>
		<p>The time on the server is ${serverTime}.</p>
	</div>
</body>
</html>