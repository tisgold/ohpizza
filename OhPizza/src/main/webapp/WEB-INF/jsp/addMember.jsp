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
	<form action="doJoin" method="POST" class="joinForm"
		onsubmit="DoJoinForm__submit(this); return false;">

		<h2>회원가입</h2>
		<div class="textForm">
			<input name="loginId" type="text" class="id" placeholder="아이디">

		</div>
		<div class="textForm">
			<input name="loginPw" type="password" class="pw" placeholder="비밀번호">
		</div>
		<div class="textForm">
			<input name="loginPwConfirm" type="password" class="pw"
				placeholder="비밀번호 확인">
		</div>
		<div class="textForm">
			<input name="name" type="password" class="name" placeholder="이름">
		</div>
		<div class="textForm">
			<input name="email" type="text" class="email" placeholder="이메일">
		</div>
		<div class="textForm">
			<input name="nickname" type="text" class="nickname" placeholder="닉네임">
		</div>
		<div class="textForm">
			<input name="cellphoneNo" type="number" class="cellphoneNo"
				placeholder="전화번호">
		</div>
		<div class="textForm">
			<!--<input name="address" type="text" id="address_kakao" readonly>  -->
			<tr>
				<th>주소</th>
				<td><input type="text" id="address_kakao" name="address"
					readonly /></td>
			</tr>
			<tr>
				<th>상세 주소</th>
				<td><input type="text" name="address_detail" /></td>
			</tr>
		</div>

		<input type="submit" class="btn" value="J O I N" />
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
</script>
</html>