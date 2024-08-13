<link href="/CSS/newmenu.css " rel="stylesheet">
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="border-end bg-white" align="center" id="sidebar-wrapper">
	<div class="list-group list-group-flush">
		<a
			class="list-group-item list-group-item-action list-group-item-light p-3"
			href="newmenu.do?img=thehiden">신제품 소개</a> <a
			class="list-group-item list-group-item-action list-group-item-light p-3"
			href="eventsProgress.do">진행중 이벤트</a> <a
			class="list-group-item list-group-item-action list-group-item-light p-3"
			href="closedEvent.do">종료된 이벤트</a> <a
			class="list-group-item list-group-item-action list-group-item-light p-3"
			href="#!">할인안내</a>
	</div>

	<div id="page-content-wrapper">
		<section class="py-5" align="center">
			<img src="images/${img}.jpg" width="30%" height="30%" align="center">
		</section>


		<div class="border-end bg-white" align="center" id="sidebar-wrapper">
			<button type="button"
				onclick="location.href='http://localhost/OhPizza/productInfo.do?type=pizza&prodNo=10000012'">
				히든시크릿 주문하기</button>
			<button type="button"
				onclick="location.href='http://localhost/OhPizza/productInfo.do?type=pizza&prodNo=10000001'">
				시크릿가든 주문하기</button>
		</div>
	</div>
	</section>
</div>
