/**
 * 암호 확인용
 */
var password = document.getElementById("password");
var confirm_password = document.getElementById("pwConfirm");

password.onchange = validatePassword;
confirm_password.onkeyup = validatePassword;

function validatePassword(){
  if(password.value != confirm_password.value) { // 만일 두 인풋 필드값이 같지 않을 경우
    // setCustomValidity의 값을 지정해 무조건 경고 표시가 나게 하고
    confirm_password.setCustomValidity("비밀번호가 일치하지 않습니다!"); 
  } 
  else { // 만일 두 인풋 필드값이 같을 경우
    // 오류가 없으면 메시지를 빈 문자열로 설정해야한다. 오류 메시지가 비어 있지 않은 한 양식은 유효성 검사를 통과하지 않고 제출되지 않는다.
    // 따라서 빈값을 주어 submit 처리되게 한다
    confirm_password.setCustomValidity(''); 
  }
}
