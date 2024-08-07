<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<aside id="event">

	<div class="border-end bg-white" align="center" id="sidebar-wrapper">
		<h1>진행중인 이벤트</h1>
		<div align="center">

			<h2>쿠폰 배너 나오는곳</h2>
			<!-- Sidebar -->
			<div class="d-flex" id="wrapper">
				<!-- Sidebar-->
				<div class="border-end bg-white" id="sidebar-wrapper">
					
					<div class="sidebar-heading border-bottom bg-light">이벤트</div>
					<div class="list-group list-group-flush">
						<a
							class="list-group-item list-group-item-action list-group-item-light p-3"
							href="newmenu.do" target="_blank">신제품 소개</a> <a
							class="list-group-item list-group-item-action list-group-item-light p-3"
							href="#!">진행중 이벤트</a> <a
							class="list-group-item list-group-item-action list-group-item-light p-3"
							href="#!">종료된 이벤트</a> <a
							class="list-group-item list-group-item-action list-group-item-light p-3"
							href="#!">할인안내</a>
					</div>
					
				</div>
				<!-- 행사 정보 출력  -->
					
					<div class="container-fluid">행사번호 ${couponList}</div>
				
				
				
				
				<!--  <a href="받을서버주소?이름1=값1&이름2=값2">내용</a>-->
				
				
				
				
			
</aside>

<div id="page-content-wrapper">
	<section class="py-5">
		<div class="container px-4 px-lg-5 mt-5">
			<div
				class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">

			</div>
	</section>
</div>