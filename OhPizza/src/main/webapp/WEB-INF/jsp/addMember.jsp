<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>addMember.jsp</title>
<link href="css/addMember.css" rel="stylesheet">
<link href="css/addMember.css" rel="js">
</head>
<body>
	<h1>멤버 가입 화면</h1>
	<form action="createMember.do" method="POST" class="joinForm" name="joinForm"
		onsubmit="DoJoinForm__submit(this); return false;">

		<h2>회원가입</h2>
		<div class="textForm">
			<input name="loginId" type="text" class="id"
				placeholder="아이디 입력 10자리 이내로 아이디 생성">
				<!-- <input type="button" value="중복확인" onclick="">  -->

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
<script src="js/addMember.js"></script>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
//주소 api
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
	
	
//전화번호 입력시 010-0000-0000    -  <생성
	function oninputPhone(target) {
		target.value = target.value.replace(/[^0-9]/g, '').replace(
				/(^02.{0}|^01.{1}|[0-9]{3,4})([0-9]{3,4})([0-9]{4})/g,
				"$1-$2-$3");
	}
	
	
	
//회원 가입 폼 value 확인하는 자바스크립트	
/*	function sendit() {
		let frm = document.joinForm;
		let userid = frm.loginId;
		let userpw = frm.loginPw;
		let userpw_re = frm.loginPwConfirm;
		let username = frm.name;
		let useremail = frm.email;
		let userphone = frm.cellphoneNo;
		

		// 아이디를 입력하세요
		if (userid.value == "") {
			alert("아이디를 입력하세요");
			userid.focus();
			return false;
		}

		// 아이디는 5자 이상, 10자 미만
		if (userid.value.length <= 4 || userid.value.length >= 10) {
			alert("아이디는 5자 이상, 10자 미만으로 입력하세요!");
			userid.focus();
			return false;
		}

		// 비밀번호 입력
		// 비밀번호는 8자 이상
		if (userpw.value == "") {
			alert("비밀번호를 입력하세요");
			userpw.focus();
			return false;
		} else {
			if (userpw.value.length > 10) {
				alert("비밀번호는 10자리 이하으로 입력하세요!");
				userpw.focus();
				return false;
			}
		}

		// 비밀번호 == 비밀번호확인
		if (userpw.value != userpw_re.value) {
			alert("비밀번호 확을 다시하세요!");
			userpw_re.focus();
			return false;
		}

		// 이름
		if (username.value == "") {
			alert("이름을 입력하세요!");
			username.focus();
			return false;
		}
		
			// email
		if (useremail.value == "") {
			alert("메일을 입력하세요!");
			username.focus();
			return false;
		}

		// 휴대폰 번호
		if (userphone.value == "") {
			alert("휴대폰 번호를 입력하세요!");
			userphone.focus();
			return false;
		}

		// submit
		frm.submit();
	}*/
	
	
</script>
</html>