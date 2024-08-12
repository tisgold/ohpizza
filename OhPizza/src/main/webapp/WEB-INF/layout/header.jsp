<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- Navigation-->
<!--ohpizza로고-->
<nav class="navbar navbar-expand-lg navbar-dark bg-white">
	<div class="container px-5">
		<a class="navbar-brand" href="index.jsp">
			<nav class="navbar navbar-light bg-white">
				<div class="container-fluid">
					<a class="navbar-brand" href="index.jsp"> <img
						src="images/ohPizzaLoge.jpg" alt="" width="200" height="90"
						class="d-inline-block align-text-top">
					</a>
				</div>
			</nav>
		</a>
		<button class="navbar-toggler" type="button"
			data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
	  			<!--바로주문-->
				<!-- <li class="nav-item"><a class="nav-link" href="index.jsp"> -->
					<!-- <nav class="navbar navbar-light bg-white"> -->
						<!-- <div class="container-fluid"> -->
							<!-- <a class="navbar-brand" href="index.jsp"> <img -->
							<!-- src="images/menu1.jpg" alt="" width="150" height="60" -->
							<!-- class="d-inline-block align-text-top"> -->
							<!-- </a> -->
						<!-- </div> -->
					<!-- </nav> -->
				<!-- </a></li> -->
				<!--바로주문-->
				<!--메뉴-->
				<li class="nav-item"><a class="nav-link" href="productList.do">
					<nav class="navbar navbar-light bg-white">
						<div class="container-fluid">
							<a class="navbar-brand" href="productList.do"> <img
							src="images/menu2.jpg" alt="" width="150" height="60"
							class="d-inline-block align-text-top">
							</a>
						</div>
					</nav>
				</a></li>
				<!--메뉴-->
				<!--매장-->
				<li class="nav-item"><a class="nav-link" href="#">
					<nav class="navbar navbar-light bg-white">
						<div class="container-fluid">
							<a class="navbar-brand" href="#"> <img
							src="images/menu3.jpg" alt="" width="150" height="60"
							class="d-inline-block align-text-top">
							</a>
						</div>
					</nav>
				</a></li>
				<!--매장-->
				<!--이벤트-->
				<li class="nav-item"><a class="nav-link" href="event.do">
					<nav class="navbar navbar-light bg-white">
						<div class="container-fluid">
							<a class="navbar-brand" href="event.do"> <img
							src="images/menu4.jpg" alt="" width="150" height="60"
							class="d-inline-block align-text-top">
							</a>
						</div>
					</nav>
				</a></li>
				<!--이벤트-->
				<!--게시판-->
				<li class="nav-item"><a class="nav-link" href="boardList.do">
					<nav class="navbar navbar-light bg-white">
						<div class="container-fluid">
							<a class="navbar-brand" href="boardList.do"> <img
							src="images/board_icon.jpg" alt="" width="150" height="50"
							class="d-inline-block align-text-top">
							</a>
						</div>
					</nav>
				</a></li>
				<!--게시판-->
				<!--마이오피-->
				<li class="nav-item"><a class="nav-link" href="myPage.do">
					<nav class="navbar navbar-light bg-white">
						<div class="container-fluid">
							<a class="navbar-brand" href="myPage.do"> <img
							src="images/menu5.jpg" alt="" width="150" height="60"
							class="d-inline-block align-text-top">
							</a>
						</div>
					</nav>
				</a></li>
				
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<!-- 로그인을 했을 경우 카트 사용가능 기능 c:when절 이용 -->
				<c:choose>
					<c:when test="${NULL != logId }">
						<form class="d-flex" action="cartList.do">
							<button class="btn btn-outline-light"
							onclick="location.href = 'cart.do?id=${logId }'" type="button">
							<i class="bi-cart-fill me-1"></i> Cart <span
							class="badge bg-dark text-white ms-1 rounded-pill">${cartNo }</span>
							</button>
						</form>
					</c:when>
					<c:otherwise>
						<form>
							<button class="btn btn-outline-light"
							onclick="alert('로그인이 필요합니다.');" type="button">
							<i class="bi-cart-fill me-1"></i> Cart <span
							class="badge bg-dark text-white ms-1 rounded-pill">${cartNo }</span>
							</button>
						</form>
					</c:otherwise>
				</c:choose>
				</div>
				
			</ul>
		</div>
	</div>
</nav>