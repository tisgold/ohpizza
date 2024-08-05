<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login.jsp</title>
    <!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>

    <!-- Custom styles for this template -->
<link href="css/login.css" rel="stylesheet">
</head>
<body class="text-center">
<c:if test="${!empty msg }">
  <p>${msg }</p>
</c:if>
   <main class="form-signin">
      <form action="loginCheck.do" method="post">
         <img class="mb-4" src="images/secret.jpg" alt="" width="72" height="57">
         <h1 class="h3 mb-3 fw-normal">로그인 페이지</h1>

         <div class="form-floating">
            <input type="text" class="form-control" name="id" placeholder="아이디">
            <label for="id">아이디</label>
         </div>
         <div class="form-floating">
            <input type="password" class="form-control" name="pw" placeholder="비밀번호">
            <label for="pw">비밀번호</label>
         </div>

         <div class="checkbox mb-3">
            <label>
               <input type="checkbox" value="remember-me"> 아이디 저장
            </label>
         </div>
         <button class="w-100 btn btn-lg btn-primary" type="submit">로그인</button>
      </form>
      <form action="addMember.do">
        <br>
          <p>회원가입 하러가기</p>
        <button class="w-100 btn btn-lg btn-primary" type="submit">회원가입</button>
      </form>

   </main>
</body>
</html>