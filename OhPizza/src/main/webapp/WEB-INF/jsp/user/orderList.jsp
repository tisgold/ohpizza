<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<h3>회원 주문 리스트</h3>

<div class="d-flex" id="wrapper">
  <!-- Sidebar-->
  <div class="border-end bg-white" id="sidebar-wrapper">
	<div class="sidebar-heading border-bottom bg-light"></div>
      <div class="list-group list-group-flush">
          <a class="list-group-item list-group-item-action list-group-item-light p-3" href="myOrder.do?id=${logId }">내주문내역</a>
          <a class="list-group-item list-group-item-action list-group-item-light p-3" href="myCoupon.do?id=${logId }">내쿠폰</a>
          <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">내문의내역</a>
          <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">정보수정</a>
          <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">회원탈퇴</a>
      </div>
  </div>
  <table class="table table-light table-striped table-hover">
    <thead>
      <tr>
        <th scope="col">#</th>
	    <th scope="col">주문일자</th>
	    <th scope="col">주문번호</th>
	    <th scope="col">결제금액</th>
	    <th scope="col">할인금액</th>
	    <th scope="col">최종결제금액</th>
	    <th scope="col">주문매장</th>
	  </tr>
    </thead>  
    <tbody>
	   <c:forEach var="order" items="${orders }" varStatus="stat">
	     <tr>
	       <th scope="row">${stat.count }</th>
	       <td>${order.orderDate() }</td>
	       <td>${order.ordNo }</td>
	       <td>${order.price } 원</td>
	       <td>${order.price } 원</td>
	       <td>${order.price } 원</td>
	       <td>${order.locName }</td>
	     </tr>
	  </c:forEach>
    </tbody>
  </table>
</div>
