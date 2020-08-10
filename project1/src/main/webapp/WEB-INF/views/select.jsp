<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Select</title>
<style>
tr.board:hover {
	background-color: #e6e6e6;
}
</style>
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script>
	$(document).ready(function() {
		$("tr.board").on("click", function() {
			var id = $(this).attr("id");
			window.location.href = "content.ws?id=" + id;
		});
	})
</script>
</head>
<body>
	<%@ include file="header.jsp"%>
	<div class="container">
		<h2 style="margin: 0 0 1em 0;">SELECT</h2>
		<table class="table">
			<thead>
				<tr>
					<th>ID</th>
					<th>제목</th>
					<th>내용</th>
					<th>글 작성일</th>
					<th>최종 수정일</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="boardDTO">
					<tr class="board" id="${boardDTO.id }">
						<td>${boardDTO.id}</td>
						<td>${boardDTO.title}</td>
						<td>${boardDTO.content}</td>
						<td>${boardDTO.reg_date}</td>
						<td>${boardDTO.mod_date}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>