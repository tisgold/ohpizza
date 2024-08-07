<link href="/CSS/newmenu.css " rel="stylesheet">
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<aside id="event">

	<div class="border-end bg-white" align="center" id="sidebar-wrapper">
		<h1>신제품 소개</h1>
			<div class="container text-center">
				<div class="row">
					<a class="col" align="right" href="http://localhost/OhPizza/productInfo.do?type=spizza&prodNo=10000001">콤비네이션 피자</a>
					<a class="col" align="left" href="http://localhost/OhPizza/productInfo.do?type=spizza&prodNo=10000002">불고기 피자</a>
				</div>
			</div>
		<img
			src="https://cdn.mrpizza.co.kr/2024_resources/images/newmenu_240328_1.jpg"
			style="width: 30%" style="height: 30%">
	</div>
</aside>

<!--  <div class="center" id="pizzamenu"  align="center"><button>제품보기</button></div>-->

<div id="page-content-wrapper">
	<section class="py-5">
		<div class="container px-4 px-lg-5 mt-5">
			<div
				class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
				<a class="center"
					href="http://localhost/OhPizza/productInfo.do?type=spizza&prodNo=10000001"
					align="center"> 주문하기 </a>
			</div>
		</div>	
	</section>
</div>
