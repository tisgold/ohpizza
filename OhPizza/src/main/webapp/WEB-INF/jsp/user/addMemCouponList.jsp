<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<div class="d-flex" id="wrapper">
	<!-- Sidebar-->
	<div class="border-end bg-white" id="sidebar-wrapper">

		<div class="sidebar-heading border-bottom bg-light" align="center">이벤트</div>
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
	</div>
	<h3>쿠폰 뽑기&진행중이벤트 확인</h3>
	<div>
		<a href="TuesdayEvent.do">
			<button type="button">
				<img src="images/Tuesday.jpg" width="500px" height="300px"
					align="top" alt="화요일이벤트">
			</button>
		</a>
	</div>
	<div>
		<a href="addMemCoupon.do">
			<button type="button">
				<img src="images/20coupon.jpg" width="500px" height="300px"
					align="middle" alt="가입기념쿠폰">
			</button>
		</a>
	</div>
	<div>
		<a href="MondayEvent.do">
			<button type="button">
				<img src="images/mondayevent.jpg" width="500px" height="300px"
					align="bottom" alt="월요일이벤트">
			</button>
		</a>
	</div>
</div>
</div>