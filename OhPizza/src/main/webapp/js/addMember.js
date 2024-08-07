/**
 *  회원 가입 폼 value 확인하는 자바스크립트
 */

function sendit() {
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
}
