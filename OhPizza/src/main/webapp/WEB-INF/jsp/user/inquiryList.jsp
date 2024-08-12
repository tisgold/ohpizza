<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<table class="table table-light table-striped table-hover">
	<thead>
		<tr>
			<th scope="col">#</th>
			<th scope="col">건의사항</th>
			<th scope="col">건의내용</th>
			<th scope="col">답변</th>
			<th scope="col">등록일자</th>
			<!-- <th scope="col">등록 ID</th> -->
		</tr>
	</thead>
	<tbody>
		<c:forEach var="inquiry" items="${inquiryList }" varStatus="stat">
			<tr>
				<th scope="row">${stat.count }</th>
				<td scope="row">${inquiry.boardTitle }</td>
				<td scope="row">${inquiry.complaint }</td>
				<td scope="row">${inquiry.answer }</td>
				<td scope="row">${inquiry.boardDate }</td>
				<!-- <td scope="row">${inquiry.memId }</td> -->
			</tr>
		</c:forEach>
	</tbody>
</table>
