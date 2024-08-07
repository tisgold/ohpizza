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
	
	<form action="createMember.do" method="POST" class="joinForm"
		onsubmit="DoJoinForm__submit(this); return false;">

		<!-- 1. 로고 -->
        <a href = "http://localhost/OhPizza/index.html"><img class="logo" src="./images/lee.jpg"></a>

		<!--  필드 -->
		<div class="field">
			<b>아이디</b> <span class="placehold-text"><input type="text"
				name="loginId" class="id" placeholder="아이디 입력 10자리 이내로 아이디 입력"></span>
		</div>
		 <div class="success-message hide">사용할 수 있는 아이디입니다</div>
   		 <div class="failure-message hide">아이디는 1~10글자이어야 합니다</div>
   		 <div class="failure-message2 hide">영어 또는 숫자만 가능합니다</div>

		<div class="field">
			<b>비밀번호</b> <input class="pw" type="password" name="loginPw"
				placeholder="비밀번호 입력 10자리 이내로 입력">
		</div>
		
		 <div class="strongPassword-message hide">8글자 이상, 영문, 숫자, 특수문자(@$!%*#?&)를 사용하세요</div>

		<div class="field">
			<b>비밀번호 재확인</b> <input class="pw-confirm" type="password"
				name="loginPwConfirm" placeholder="비밀번호 확인">
		</div>

		<div class="textForm">
			<b>이름</b> <input type="text" name="name" class="name"
				placeholder="이름">
		</div>


		<!-- 이메일_전화번호 -->
		<div class="textForm">
			<b>본인 확인 이메일</b> <input type="text"
				 name="email" class="email" placeholder="이메일">
		</div>


		<div class="textForm">
			<b>전화번호</b>
			 <input name="cellphoneNo" type="text" class="cellphoneNo"
				oninput="oninputPhone(this)" maxlength="14" placeholder="전화번호">
		</div>
		<div class="textForm">
		<b>주소</b>
			<input name="address" type="text" id="address_kakao" placeholder="주소입력"
				readonly>

		</div>
		<div class="textForm">
			<b>상세주소</b>
			<input name="address_detail" type="text" id="address"
				placeholder="상세주소 입력">



		</div>
		<!-- 6. 가입하기 버튼 -->
		<input type="submit" value="가입하기" class="btn">





	</form>
</body>
<!-- <link href="WEB-INF/layout/footer.jsp"  rel="stylesheet"> 
<tiles:insertAttribute name="footer" /> -->

<script src="js/addMemberTest.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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