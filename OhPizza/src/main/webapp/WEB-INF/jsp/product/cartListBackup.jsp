<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>




<table border='2' width=800px>
	<tr>
		<th>제품명</th>
		<th>가격</th>
		<th>개수</th>
		<th>총가격</th>
	</tr>
	<c:forEach var="cart" items="${cartList }">
		<tr>
			<td>${cart.prodName }</td>
			<td>${cart.prodPrice }</td>
			<td>${cart.count }</td>
			<td>${cart.count*cart.prodPrice }</td>	
			<td>
				<form action = "cartDelete.do">
					<input type=hidden name=id value='${logId }'>
				  <input type=hidden name=listNo value='${cart.listNo }'>
				  <button type="submit">삭제</button>
				</form>		
			</td>
		</tr>
	</c:forEach>
</table>

<h1>총 가격: ${aPrice }</h1>
<form>
	<button type=submit>결제하기</button>
</form>