<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<h3>love</h3>
<div class="d-flex" id="wrapper">
	<!-- Sidebar-->
	<div class="border-end bg-white" id="sidebar-wrapper">
		<div class="sidebar-heading border-bottom bg-light"></div>
		<div class="list-group list-group-flush">
			<a
				class="list-group-item list-group-item-action list-group-item-light p-3"
				href="myOrder.do?id=${logId }">내주문내역</a> <a
				class="list-group-item list-group-item-action list-group-item-light p-3"
				href="myCoupon.do?id=${logId }">내쿠폰</a> <a
				class="list-group-item list-group-item-action list-group-item-light p-3"
				href="inquiry.do?id=${logId }">내문의내역</a> <a
				class="list-group-item list-group-item-action list-group-item-light p-3"
				href="#!">정보수정</a> <a
				class="list-group-item list-group-item-action list-group-item-light p-3"
				href="#!">회원탈퇴</a>
		</div>
	</div>
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
</div>