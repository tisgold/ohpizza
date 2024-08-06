<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
          <a class="list-group-item list-group-item-action list-group-item-light p-3" href="myOrders.do?memId=user01">내주문내역</a>
          <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">내쿠폰</a>
          <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">내문의내역</a>
          <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">정보수정</a>
          <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">회원탈퇴</a>
      </div>
  </div>
</div>
</body>
</html>