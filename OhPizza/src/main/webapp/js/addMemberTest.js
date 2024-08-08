/**
 * 유효성 검사
 */
//-----------------------------------------------------------------------------------
// 1. 아이디 입력창 정보 가져오기
let elInputUsername = document.querySelector('#loginId'); // input.id
// 2. 성공 메시지 정보 가져오기
let elSuccessMessage = document.querySelector('.success-message'); // div.success-message.hide
// 3. 실패 메시지 정보 가져오기 (글자수 제한 1~10글자)
let elFailureMessage = document.querySelector('.failure-message'); // div.failure-message.hide
// 4. 실패 메시지2 정보 가져오기 (영어 또는 숫자)
let elFailureMessageTwo = document.querySelector('.failure-message2'); // div.failure-message2.hide
// 5. 중복아이디 메세지 정보 가져오기
let elFailureDuplicateId = document.querySelector('.duplicateId-message'); // div.failure-message2.hide



//-----------------------------------------------------------------------------------
// 1. 비밀번호 입력창 정보 가져오기
let elInputPassword = document.querySelector('.pw'); // input#password
// 2. 비밀번호 확인 입력창 정보 가져오기
let elInputPasswordRetype = document.querySelector('.pw-confirm'); // input#password-retype
// 3. 실패 메시지 정보 가져오기 (비밀번호 불일치)
let elMismatchMessage = document.querySelector('.mismatch-message'); // div.mismatch-message.hide
// 4. 실패 메시지 정보 가져오기 (8글자 이상, 영문, 숫자, 특수문자 미사용)
let elStrongPasswordMessage = document.querySelector('.strongPassword-message'); // div.strongPassword-message.hide



//-----------------------------------------------------------------------------------
//글자 이상 또는 10글자 이하인 경우 true, 아니면 false를 리턴한다.
function idLength(value) {
	return value.length >= 1 && value.length <= 10
}
// 중복 아이디 체크

//아이디 : 영어 또는 숫자만 가능
function onlyNumberAndEnglish(str) {
	return /^[A-Za-z0-9][A-Za-z0-9]*$/.test(str);
	//영어 또는 숫자가 들어간 경우 true, 아니면 false를 리턴한다.
	//test() : 문자열에 일치하는 부분이 있는지 확인한다. true 또는 false를 반환
}

//비밀번호 : 8글자 이상, 영문, 숫자, 특수문자 사용
function strongPassword(str) {
	return /^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$/.test(str);
	//최소 8글자 이상이면서, 알파벳과 숫자 및 특수문자(@$!%*#?&)가 하나 이상 포함될 경우 true, 아니면 false를 리턴한다.
}

// 비밀번호 확인 : 비밀번호와 비밀번호 확인 일치
function isMatch(password1, password2) {
	return password1 === password2;
	//비밀번호와 비밀번호 확인이 일치할 경우 true, 아니면 false를 리턴한다.
}



//-----------------------------------------------------------------------------------
//아이디 이벤트 (1글자 이상 10글자 이하, 영어 또는 숫자만 가능)
//onkeyup : 키보드가 눌렸다 떼어졌을 때를 의미
//elInputUsername이 키보드로 입력이 됐을 때 이벤트 핸들러 안에 있는 내용이 실행된다.

let checkIdMsg = document.querySelector('#checkIdMsg'); // 아이디 체크 메시지
let checkPwdMsg1 = document.querySelector('#checkPwdMsg1');// 비밀번호 규칙 체크 메시지
let checkPwdMsg2 = document.querySelector('#checkPwdMsg2');// 비밀번호 확인 체크 메시지

elInputUsername.onkeyup = function() {
	// 값을 입력한 경우
	if (elInputUsername.value.length !== 0) {
		// 영어 또는 숫자 외의 값을 입력했을 경우
		if (onlyNumberAndEnglish(elInputUsername.value) === false) {
			// 위에 있는 변수에 querySelector 로 메시지를 넣을 위치를 가져와서 태그안에 innerHTML을 이용해서 = 뒤에 있는 값을 출력.
			checkIdMsg.innerHTML = "<font color='red'>영어 또는 숫자만 가능합니다.</font>";
			// 글자 수가 1~10글자가 아닐 경우
		} else if (idLength(elInputUsername.value) === false) {
			// 위에 있는 변수에 querySelector 로 메시지를 넣을 위치를 가져와서 태그안에 innerHTML을 이용해서 = 뒤에 있는 값을 출력.
			checkIdMsg.innerHTML = "<font color='red'>아이디는 1~10글자이어야 합니다.</font>";
			// 조건을 모두 만족할 경우
		} else if (idLength(elInputUsername.value) || onlyNumberAndEnglish(elInputUsername.value)) {
			fetch("idCheck.do?loginId=" + loginId.value)
				.then(response => {
					return response.json();
				})
				.then(data => {
					// data에서 필요한 값을 확인하는 부분

					if (data.retCode === "Success" && data.retVal === "ok") {

						checkIdMsg.innerHTML = "<font color='blue'>사용할 수 있는 아이디입니다.</font>";
					} else {
						checkIdMsg.innerHTML = "<font color='red'>중복된 아이디가 있습니다.</font>";
					}
				})
				.catch(error => {
					console.error("There was a problem with the fetch operation:", error);
					checkIdMsg.innerHTML = "<font color='red'>서버 오류</font>";
				});
		}
	}
}//end elInputUsername.onkeyup = function


//-----------------------------------------------------------------------------------
//비밀번호 이벤트 (8글자 이상, 영문, 숫자, 특수문자 사용)
//onkeyup : 키보드가 눌렸다 떼어졌을 때를 의미
//elInputPassword이 키보드로 입력이 됐을 때 이벤트 핸들러 안에 있는 내용이 실행된다.
elInputPassword.onkeyup = function() {

	// console.log(elInputPassword.value);
	// 값을 입력한 경우
	if (elInputPassword.value.length !== 0) {

		if (strongPassword(elInputPassword.value)) {

			checkPwdMsg1.innerHTML = "<font color='blue'>사용할 수 있는 비밀번호 입니다.</font>";
		}
		else {
			checkPwdMsg1.innerHTML = "<font color='red'>8글자 이상, 영문, 숫자,특수문자(@$!%*#?&)를 사용하세요</font>";
		}
	}
	// 값을 입력하지 않은 경우 (지웠을 때)
	// 모든 메시지를 가린다.
	//조건이 부적합할 경우 : .classList.remove('hide')로 hide 클래스를 삭제하여 화면에 표시한다.
	//조건이 적합할 경우 : .classList.add('hide')로 hide 클래스를 추가하여 화면에서 가린다.
}; //end elInputPassword.onkeyup = function

//-----------------------------------------------------------------------------------

//비밀번호 확인 이벤트 (비밀번호와 비밀번호 확인 일치)
//onkeyup : 키보드가 눌렸다 떼어졌을 때를 의미
//elInputPasswordRetype이 키보드로 입력이 됐을 때 이벤트 핸들러 안에 있는 내용이

elInputPasswordRetype.onkeyup = function() {

	// console.log(elInputPasswordRetype.value);
	if (elInputPasswordRetype.value.length !== 0) {

		if (isMatch(elInputPassword.value, elInputPasswordRetype.value)) {
			checkPwdMsg2.innerHTML = "<font color='blue'>비밀번호가 일치 합니다.</font>";
		}
		else {
			checkPwdMsg2.innerHTML = "<font color='red'>비밀번호가 일치하지 않습니다.</font>";
		}
	}
	//조건이 부적합할 경우 : .classList.remove('hide')로 hide 클래스를 삭제하여 화면에 표시한다.
	//조건이 적합할 경우 : .classList.add('hide')로 hide 클래스를 추가하여 화면에서 가린다.
};// end elInputPasswordRetype.onkeyup = function ()




