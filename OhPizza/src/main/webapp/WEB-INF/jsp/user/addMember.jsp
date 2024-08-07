<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>addMember.jsp</title>
<link href="css/addMember.css" rel="stylesheet">
</head>
<body>
	<h1>멤버 가입 화면</h1>
	<form action="createMember.do" method="POST" class="joinForm"
		onsubmit="DoJoinForm__submit(this); return false;">

		<h2>회원가입</h2>
		<div class="textForm">
			<input name="loginId" type="text" class="id"
				placeholder="아이디 입력 10자리 이내로 아이디 생성">

		</div>
		<div class="textForm">
			<input name="loginPw" type="password" class="pw"
				placeholder="비밀번호 입력 10자리 이내로 생성">
		</div>
		<div class="textForm">
			<input name="loginPwConfirm" type="password" class="pw"
				placeholder="비밀번호 확인">
		</div>
		<div class="textForm">
			<input name="name" type="text" class="name" placeholder="이름">
		</div>
		<div class="textForm">
			<input name="email" type="text" class="email" placeholder="이메일">
		</div>

		<div class="textForm">
			<input name="cellphoneNo" type="text" class="cellphoneNo"
				oninput="oninputPhone(this)" maxlength="14" placeholder="전화번호">
		</div>
		<div class="textForm">
			<input name="address" type="text" id="address_kakao" placeholder="주소"
				readonly>

		</div>
		<div class="textForm">
			<input name="address_detail" type="text" id="address"
				placeholder="상세주소 입력">

		</div>
		<input type="submit" class="btn" value="회원가입" />



	</form>
</body>
<!-- <link href="WEB-INF/layout/footer.jsp"  rel="stylesheet"> 
<tiles:insertAttribute name="footer" /> -->

<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	window.onload = function() {
		document
				.getElementById("address_kakao")
				.addEventListener(
						"click",
						function() { //주소입력칸을 클릭하면
							//카카오 지도 발생
							new daum.Postcode(
									{
										oncomplete : function(data) { //선택시 입력값 세팅
											document
													.getElementById("address_kakao").value = data.address; // 주소 넣기
											document
													.querySelector(
															"input[name=address_detail]")
													.focus(); //상세입력 포커싱
										}
									}).open();
						});
	}

	function oninputPhone(target) {
		target.value = target.value.replace(/[^0-9]/g, '').replace(
				/(^02.{0}|^01.{1}|[0-9]{3,4})([0-9]{3,4})([0-9]{4})/g,
				"$1-$2-$3");
	}
</script>
</html>