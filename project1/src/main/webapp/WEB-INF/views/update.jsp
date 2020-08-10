<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update</title>
</head>
<body>
	<%@ include file="header.jsp"%>
	<div class="container">
		<h2 style="margin: 0 0 1em 0;">UPDATE</h2>
		<form method="post" onsubmit="return confirm('정말로 수정하시겠습니까?');">
			<c:forEach items="${list}" var="boardDTO">
				<table class="table table-bordered">
					<thead>
					</thead>
					<c:forEach items="${list}" var="boardDTO">
						<tbody>
							<tr>
								<td style="width: 6em; text-align: center;">
									<h6>ID</h6>
								</td>
								<td>
									<input id="${boardDTO.id}" type="text" class="form-control id" style="border: none; background-color: transparent;" name="id" value="${boardDTO.id } " readonly>
								</td>
							</tr>
							<tr>
								<td style="width: 6em; text-align: center;">
									<h6>제목</h6>
								</td>
								<td>
									<input id="title" type="text" class="form-control" style="border: none; background-color: transparent;" name="title" value="${boardDTO.title } ">
								</td>
							</tr>
							<tr>
								<td style="width: 6em; text-align: center;">
									<h6>내용</h6>
								</td>
								<td>
									<textarea style="resize: vertical; background-color: transparent; border: none;" id="content" type="content" class="form-control" name="content">${boardDTO.content }</textarea>
								</td>
							</tr>
							<tr>
								<td style="width: 6em; text-align: center;">
									<h6>글 작성일</h6>
								</td>
								<td>
									<input id="reg_date" type="text" class="form-control" style="border: none; background-color: transparent;" name="reg_date" value="${boardDTO.reg_date } " readonly>
								</td>
							</tr>
							<tr>
								<td style="width: 6em; text-align: center;">
									<h6>최종 수정일</h6>
								</td>
								<td>
									<input id="mod_date" type="text" class="form-control" style="border: none; background-color: transparent;" name="mod_date" value="${boardDTO.mod_date } " readonly>
								</td>
							</tr>
						</tbody>
					</c:forEach>
				</table>
			</c:forEach>
			<input type="submit" class="btn btn-default update" value="수정" onclick="javascript: form.action='update.ws';" />
		</form>
	</div>
</body>
</html>