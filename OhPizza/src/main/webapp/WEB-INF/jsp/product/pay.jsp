<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<h1>주문 확인 창</h1>

<form action="finalBuy.do">
	<input type="hidden" name=id value="${logId }">
	<input type="hidden" name=member value="${member }"> <input
		type="hidden" name=olList value="${olList }"> <input
		type="hidden" name=aPrice value="${lastPrice }">
	<p>회원 이름: ${member.memName }</p>
	<p>배송지: ${member.address }</p>
	<p>전화번호: ${member.phone }</p>

	주문상품 <br>
	<c:forEach var="ol" items="${olList }">
		<input type="hidden" name=listNo value="${ol.listNo }">
	${ol.prodName } ${ol.count }개
	<br>
	</c:forEach>

	<p></p>
	<p>매장명 :</p>
	사용 가능한 쿠폰:
	<p></p>
	결제 가격: ${lastPrice } 원
	<p></p>
	<button type="button" onclick='buy()'>결제</button>
</form>



<script src="js/pay.js"></script>

