<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script>
	var url = window.location.href;
	var href = url.substring(url.lastIndexOf("/mybatis") + 9, url
			.lastIndexOf(".ws"));
</script>
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script>
	$(document).ready(function() {
		$('li#' + href).addClass('active');
	});
</script>
<header style="margin-bottom: -1.4em;">
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="home.ws">Spring CRUD 연습</a>
			</div>
			<ul class="nav navbar-nav">
				<li id="select"><a href="select.ws">Select</a></li>
				<li id="insert"><a href="insert.ws">Insert</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
			</ul>
		</div>
	</nav>
</header>
<div class="container">
	<div class="jumbotron">
		<h2>Spring MySQL, MyBatis CRUD 연습하기</h2>
		<p>select insert update delete</p>
	</div>
</div>