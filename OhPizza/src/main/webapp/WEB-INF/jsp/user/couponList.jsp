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
	    <th scope="col">쿠폰이름</th>
	    <th scope="col">할인율</th>
	  </tr>
    </thead>  
    <tbody>
  	   <c:forEach var="coupon" items="${coupons }" varStatus="stat">
	     <tr>
	       <th scope="row">${stat.count }</th>
	       <td>${coupon.key }</td>
	       <td>${coupon.value }%</td>
	     </tr>
	  </c:forEach>
    </tbody>
  </table>
</div>