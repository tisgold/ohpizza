<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<h3>게시판 상세(board.jsp)</h3>
<!-- <p>${boardDetail }</p> -->
<form action="">
	<input type="hidden" name="bno" value="${boardDetail.boardNo }">
	<table class="table">
		<tr>
			<th class="col-sm-3">글번호</th>
			<td>${boardDetail.boardNo }</td>
			<th>조회수</th>
			<td>${boardDetail.boardView }</td>
		</tr>
		<tr>
			<th>제목</th>
			<td colspan="3">${boardDetail.boardTitle }</td>
		</tr>
		<tr>
			<th>내용</th>
			<td colspan="3">${boardDetail.review }</td>
		</tr>
		<tr>
			<th>작성자</th>
			<td colspan="3">${boardDetail.memId }</td>
		</tr>
		<tr>
			<td colspan="4" align="center"><c:choose>
					<c:when test="${logId == boardDetail.memId }">
						<button class="btn btn-warning" type="button">수정화면</button>
					</c:when>
					<c:otherwise>
						<button class="btn btn-warning" disabled type="button">수정화면</button>
					</c:otherwise>
				</c:choose></td>
		</tr>
	</table>
</form>