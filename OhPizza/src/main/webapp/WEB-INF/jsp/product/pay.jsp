<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<h1>주문 확인 창</h1>

<p>회원 이름: ${member.memName }</p>
<p>주소: ${member.address }</p>
<p>전화번호: ${member.phone }</p>

주문상품
<br>
<c:forEach var="cart" items="${cartList }">
	${cart.prodName } ${cart.count }개
	<br>
</c:forEach>
<p>
</p>
결제 가격: ${aPrice } 원 결제창 ${a}

<script>
	let a = 1;
</script>

