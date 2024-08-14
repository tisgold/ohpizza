<link href="/CSS/newmenu.css " rel="stylesheet">
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<<<<<<< HEAD
<style>
div img {
	float: left;
}
</style>
<!-- Sidebar -->
<div class="d-flex" id="wrapper">
	<!-- Sidebar-->
	<div class="border-end bg-white" id="sidebar-wrapper">
		<div class="sidebar-heading border-bottom bg-light" align="center">이벤트</div>
		<img src="images/${img}.jpg" alt="img" width="40%" height="40%">
		<div class="list-group list-group-flush">
			<a
				class="list-group-item list-group-item-action list-group-item-light p-3"
				href="newmenu.do?img=thehiden">신제품 소개</a> <a
				class="list-group-item list-group-item-action list-group-item-light p-3"
				href="eventsProgress.do">진행중 이벤트</a> <a
				class="list-group-item list-group-item-action list-group-item-light p-3"
				href="closedEvent.do">종료된 이벤트</a> <a
				class="list-group-item list-group-item-action list-group-item-light p-3"
				href=""#!">할인안내</a>
				
		</div>
	</div>
</div>
<div class="border-end bg-white" align="center" align="top" float="right" id="sidebar-wrapper">
	<h1>진행중인 이벤트</h1>
	<h1>신제품 소개</h1>

	<button type="button" onclick="location.href='newmenu.do?img=thehiden'">더
		히든 시크릿</button>
	<button type="button"
		onclick="location.href='newmenu.do?img=secretgarden'">시크릿가든</button>
	<div style="float: right;" align="center">


		
	

	<div class="d-flex" style="float: right;" align="center" id="wrapper">
		<button type="button"
			onclick="location.href='http://localhost/OhPizza/productInfo.do?type=pizza&prodNo=10000001'">
			히든시크릿 주문하기</button>
		<button type="button"
			onclick="location.href='http://localhost/OhPizza/productInfo.do?type=pizza&prodNo=10000002'">
			시크릿가든 주문하기</button>
	</div>


=======
<script type="text/javascript">
function argC(act,mnlmg{
	for(i = 0; i <4; i++){
		alert(docuement.getElememtByld(act));
	}
	document.getElementByld('mn_img').src = mnlmg;
	document.getElementByld('arg01').style.display = "none";
	document.getElementByld('arg02').style.display = "none";
	document.getElementByld(act).style.display = "block";
	
	
})
</script>
<!-- Sidebar -->
<div class="d-flex" id="wrapper">
	<!-- Sidebar-->
	<div class="border-end bg-white" id="sidebar-wrapper">
		<div class="sidebar-heading border-bottom bg-light" align="center">이벤트</div>
		<div class="list-group list-group-flush">
			<a
				class="list-group-item list-group-item-action list-group-item-light p-3"
				href="newmenu.do">신제품 소개</a> <a
				class="list-group-item list-group-item-action list-group-item-light p-3"
				href="addMemCopon.do">진행중 이벤트</a> <a
				class="list-group-item list-group-item-action list-group-item-light p-3"
				href="closedEvent.do">종료된 이벤트</a> 				
		</div>
	</div>
</div>
<div class="border-end bg-white" align="center" align="center" id="sidebar-wrapper">
	<h3>신제품 소개</h3>	
	<a href='productInfo.do?type=pizza&prodNo=10000001'><img src="images/thehiden.jpg" alt="img" width="40%" height="40%"></a>
>>>>>>> branch 'main' of https://github.com/tisgold/ohpizza.git
</div>
