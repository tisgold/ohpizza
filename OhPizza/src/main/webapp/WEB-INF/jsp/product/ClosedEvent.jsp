<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<h1>종료된이벤트</h1>
<button type="button"onclick="location.href='event.do?">종료된 이벤트</button>
<div>
	<img src="images/${closeeventimg}.jpg" width="30%" height="30%" hidden="">
	<strong>마감된 이벤트입니다</strong>
</div>

<body>
  <a href="closedEvent.do">
      <img src="images/${closeeventimg}.jpg" width="30%" height="30%">
  </a>
</body>