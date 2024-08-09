<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>myPage.jsp</title>
</head>
<body>
  <h1>나의 오피 페이지</h1>
  <!-- Sidebar -->
<div class="d-flex" id="wrapper">
  <!-- Sidebar-->
  <div class="border-end bg-white" id="sidebar-wrapper">
	<div class="sidebar-heading border-bottom bg-light"></div>
      <div class="list-group list-group-flush">
          <a class="list-group-item list-group-item-action list-group-item-light p-3" href="myOrder.do?id=${logId }">내주문내역</a>
          <a class="list-group-item list-group-item-action list-group-item-light p-3" href="myCoupon.do?id=${logId }">내쿠폰</a>
          <a class="list-group-item list-group-item-action list-group-item-light p-3" href="inquiry.do?id=${logId}">내문의내역</a>
          <a class="list-group-item list-group-item-action list-group-item-light p-3" href="showMemInfo.do?id=${logId }">정보수정</a>
          <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">회원탈퇴</a>
      </div>
  </div>
</div>
</body>
</html>