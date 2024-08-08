<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>showMemInfo.jsp</title>
</head>
<body>
  <div class="d-flex justify-content-center">
	<div class="col-md-7 col-lg-5">
        <h3>정보 수정</h3>
        <form action="updateMemInfo.do" method="POST">
          <div class="row g-3">
            <div class="col-12">
              <label for="name" class="form-label">이름</label>
              <input type="text" class="form-control" id="name" placeholder="" required>
            </div>

            <div class="col-12">
              <label for="password" class="form-label">비밀번호</label>
              <input type="password" class="form-control" id="password" placeholder="" maxlength="10" required>
            </div>
            <div class="col-12">
              <label for="pwConfirm" class="form-label">비밀번호 확인</label>
              <input type="password" class="form-control" id="pwConfirm" placeholder="" maxlength="10" required>
            </div>
            
            <div class="col-12">
              <label for="phone" class="form-label">전화번호</label>
              <input type="text" class="form-control" id="phone" placeholder="" value=""
              oninput="oninputPhone(this)" maxlength="14">
            </div>

            <div class="col-12">
              <label for="email" class="form-label">Email</label>
              <input type="email" class="form-control" id="email" placeholder="you@example.com">
            </div>

            <div class="col-12">
              <label for="address" class="form-label">주소</label>
              <input type="text" class="form-control" id="address" placeholder="">
            </div>
            <div class="col-12">
              <label for="address_detail" class="form-label">상세 주소</label>
              <input type="text" class="form-control" id="address_detail" placeholder="">
            </div>
          </div><br>
          
          <button class="btn btn-primary btn-lg" type="submit">정보수정</button><br><br>
        </form>
      </div>
    </div>
<script src="js/passCheck.js"></script>
<script	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="js/address.js"></script>
<script>
	function oninputPhone(target) {
		target.value = target.value.replace(/[^0-9]/g, '').replace(
			/(^02.{0}|^01.{1}|[0-9]{3,4})([0-9]{3,4})([0-9]{4})/g, "$1-$2-$3");
	}
</script>
</body>
</html>