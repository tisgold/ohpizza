<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- 상품목록  -->
<head>
<style>
	a{
		text-decoration-line: none;
		color : black;
	}
</style>
</head>

<!-- Navigation bar -->
<nav class="nav nav-pills nav-fill">
<!-- <nav class="navbar navbar-dark bg-dark"> -->
    <div class="container px-5">
        <ul class="nav nav-pills nav-justifie">
            <li class="nav-item"><a class="nav-link" href="productList.do?type=pizza">피자</a></li>
            <li class="nav-item"><a class="nav-link" href="productList.do?type=spizza">1인용피자</a></li>
            <li class="nav-item"><a class="nav-link" href="productList.do?type=set">특가세트</a></li>
            <li class="nav-item"><a class="nav-link" href="productList.do?type=side">셀러드&사이드</a></li>
        </ul>
    </div>
</nav>
<!-- Sidebar -->
<div class="d-flex" id="wrapper">
  <!-- Sidebar-->
  <div class="border-end bg-white" id="sidebar-wrapper">
	<div class="sidebar-heading border-bottom bg-light"></div>
      <div class="list-group list-group-flush">
          <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">Dashboard</a>
          <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">Shortcuts</a>
          <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">Overview</a>
          <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">Events</a>
          <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">Profile</a>
          <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">Status</a>
      </div>
  </div>
  <!-- Page content wrapper-->
  <div id="page-content-wrapper">
<section class="py-5">
    <div class="container px-4 px-lg-5 mt-5">
        <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
            <c:forEach var="product" items="${productList }">
            <!-- 아이템 -->
            <div class="col mb-5">
                <div class="card h-100">
                    <!-- Sale badge-->
                    <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                    <!-- Product image-->
                    <img class="card-img-top" src="images/${product.image }" alt="..." />
                    <!-- Product details-->
                    <div class="card-body p-4">
                        <div class="text-center">
                            <!-- Product name-->
                            <h5 class="fw-bolder"><a href="productInfo.do?type=${type }&prodNo=${product.prodNo }">${product.prodName}</a></h5>
                            <!-- Product reviews-->
                            <div class="d-flex justify-content-center small text-warning mb-2">
                                <c:forEach begin="1" end="${product.starPoint }">
                                	<div class="bi-star-fill"></div>
                                </c:forEach>
                            </div>
                            <!-- Product price-->
                            <span class="text-muted text-decoration-line-through">${product.priceL } 원</span>
                            ${product.priceM } 원
                        </div>
                    </div>
                    <!-- Product actions-->
                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                        <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a></div>
                    </div>
                </div>
            </div>  
            </c:forEach>
            
        </div>
    </div>
</section>
</div>
</div>