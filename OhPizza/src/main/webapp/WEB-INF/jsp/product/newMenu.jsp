<link href="/CSS/newmenu.css " rel="stylesheet">
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<aside id="event">


	<div class="border-end bg-white" align="center" id="sidebar-wrapper">
		<h1>진행중인 이벤트</h1>
		<h1>신제품 소개</h1>
		<button type="button" 
			onclick="location.href='newmenu.do?img=thehiden'">더 히든 시크릿</button>
		<button type="button" 
			onclick="location.href='newmenu.do?img=secretgarden'">시크릿가든</button>
			<div>
			<img src="images/${img}.jpg" width="30%" height="30%">
			</div>
	</div>
	<div class="d-flex" id="wrapper">
		<!-- Sidebar-->
		<div class="border-end bg-white" id="sidebar-wrapper">

			<div class="sidebar-heading border-bottom bg-light" align="center">이벤트</div>
			<div class="list-group list-group-flush">
				<a
					class="list-group-item list-group-item-action list-group-item-light p-3"
					href="newmenu.do" target="_blank">신제품 소개</a> <a
					class="list-group-item list-group-item-action list-group-item-light p-3"
					href="eventsProgress.do">진행중 이벤트</a> <a
					class="list-group-item list-group-item-action list-group-item-light p-3"
					href="closedEvent.do">종료된 이벤트</a> <a
					class="list-group-item list-group-item-action list-group-item-light p-3"
					href="#!">할인안내</a>
			</div>
		</div>
	</div>
			
					
		
		
		


	<!-- Sidebar -->
	<div class="border-end bg-white" align="center" id="sidebar-wrapper">

	</div>
</aside>




<!--  <div class="center" id="pizzamenu"  align="center"><button>제품보기</button></div>-->

<div id="page-content-wrapper">
	<section class="py-5">
		<div class="container px-4 px-lg-5 mt-5">
			<div
				class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
				<a class="center"
					href="http://localhost/OhPizza/productInfo.do?type=set&prodNo=10000002"
					align="center"> 주문하기 </a>
			</div>
		</div>
	</section>
</div>
