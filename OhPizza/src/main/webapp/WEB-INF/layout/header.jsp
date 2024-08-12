<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Navigation-->
<<<<<<< HEAD

<!--ohpizza로고-->
<nav class="navbar navbar-expand-lg navbar-dark bg-white">
	<div class="container px-5">
		<a class="navbar-brand" href="index.html">
			<nav class="navbar navbar-light bg-white">
				<div class="container-fluid">
					<a class="navbar-brand" href="index.html"> <img
						src="images/ohPizzaLoge.jpg" alt="" width="200" height="90"
						class="d-inline-block align-text-top">

					</a>
				</div>
			</nav>
		</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<!--바로주문-->
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link" href="index.html">
						<nav class="navbar navbar-light bg-white">
							<div class="container-fluid">
								<a class="navbar-brand" href="index.html"> <img
									src="images/menu1.jpg" alt="" width="150" height="60"
									class="d-inline-block align-text-top">

								</a>
							</div>
						</nav>
				</a></li>
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
				<li class="nav-item"><a class="nav-link" href="event.do">
						<nav class="navbar navbar-light bg-white">
							<div class="container-fluid">
								<a class="navbar-brand" href="event.do"> <img
									src="images/menu3.jpg" alt="" width="150" height="60"
									class="d-inline-block align-text-top">

								</a>
							</div>
						</nav>
				</a></li>
				<!--매장-->
				<!--이벤트-->
				<li class="nav-item"><a class="nav-link" href="boardList.do">
						<nav class="navbar navbar-light bg-white">
							<div class="container-fluid">
								<a class="navbar-brand" href="boardList.do"> <img
									src="images/menu4.jpg" alt="" width="150" height="60"
									class="d-inline-block align-text-top">

								</a>
							</div>
						</nav>
				</a></li>
				<!--이벤트-->
				<!--마이미피-->
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
				<!--마이미피-->
				<!-- <li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" id="navbarDropdownBlog" href="#"
					role="button" data-bs-toggle="dropdown" aria-expanded="false">Blog</a>
					<ul class="dropdown-menu dropdown-menu-end"
						aria-labelledby="navbarDropdownBlog">
						<li><a class="dropdown-item" href="blog-home.html">Blog
								Home</a></li>
						<li><a class="dropdown-item" href="blog-post.html">Blog
								Post</a></li>
					</ul></li>
					<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" id="navbarDropdownPortfolio"
							href="#" role="button" data-bs-toggle="dropdown"
							aria-expanded="false">Portfolio</a>
							<ul class="dropdown-menu dropdown-menu-end"
								aria-labelledby="navbarDropdownPortfolio">
								<li><a class="dropdown-item" href="portfolio-overview.html">Portfolio
										Overview</a></li>
								<li><a class="dropdown-item" href="portfolio-item.html">Portfolio
										Item</a></li> 

							</ul></li>-->
				<form class="d-flex">
					<button class="btn btn-outline-black-50"
						onclick="location.href = 'orderList.do'" type="submit">
						<i class="bi-cart-fill me-1"></i> Cart <span
							class="badge bg-dark text-dark ms-1 rounded-pill">0</span>
					</button>
				</form>
			</ul>
		</div>
	</div>
</nav>
=======
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container px-5">
        <a class="navbar-brand" href="index.jsp">오! 피자</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                <li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="productList.do">메뉴</a></li>
                <li class="nav-item"><a class="nav-link" href="event.do">이벤트</a></li>
                <li class="nav-item"><a class="nav-link" href="boardList.do">게시판</a></li>
                <li class="nav-item"><a class="nav-link" href="myPage.do">나의오피</a></li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdownBlog" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Blog</a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdownBlog">
                        <li><a class="dropdown-item" href="blog-home.html">Blog Home</a></li>
                        <li><a class="dropdown-item" href="blog-post.html">Blog Post</a></li>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdownPortfolio" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Portfolio</a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdownPortfolio">
                        <li><a class="dropdown-item" href="portfolio-overview.html">Portfolio Overview</a></li>
                        <li><a class="dropdown-item" href="portfolio-item.html">Portfolio Item</a></li>
                    </ul>
                </li>
            </ul>
            <form class="d-flex" action="cartList.do"> 
                <button class="btn btn-outline-light" onclick = "location.href = 'cart.do?id=${logId }'" type="button">
                    <i class="bi-cart-fill me-1"></i>
                    Cart
                    <span class="badge bg-dark text-white ms-1 rounded-pill">${cartNo }</span>
                </button>
            </form>
        </div>
    </div>
>>>>>>> refs/heads/main
</nav>