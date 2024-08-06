<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<h1>게시판 페이지</h1>
<div class="boardList">
	<table class="table table-striped">
		<thead>
			<tr>
				<th scope="col">게시판 번호</th>
				<th scope="col">제목</th>
				<th scope="col">작성자</th>
				<th scope="col">작성일</th>
				<th scope="col">조회수</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="board" items="${boardList }">
				<tr>
					<td>${board.boardNo }</td>
					<td>${board.boardTitle }</td>
					<td>${board.memId }</td>
					<td>${board.boardDate }</td>
					<td>${board.boardView }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
