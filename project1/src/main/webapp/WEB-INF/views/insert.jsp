<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert</title>
</head>
<body>
	<%@ include file="header.jsp"%>
	<div class="container">
		<h2 style="margin: 0 0 1em 0;">INSERT</h2>
		<form method="post" action="insert.ws">
			<div class="input-group">
				<span class="input-group-addon">제목</span> <input id="title" type="text" class="form-control" name="title" placeholder="제목">
			</div>
			<div class="input-group">
				<span class="input-group-addon">내용</span>
				<textarea style="resize: vertical;" id="content" type="content" class="form-control" name="content" placeholder="내용"></textarea>
			</div>
			<br />
			<div>
				<input type="submit" class="btn btn-default delete" value="저장" />
			</div>
		</form>
	</div>
</body>
</html>