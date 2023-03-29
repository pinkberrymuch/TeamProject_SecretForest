<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="/resources/CSS/login.css">
<title>Log in</title>
</head>
<body>
 <%@ include file ="../header.jsp" %>
  <div id="page">
   <!--메인 컨텐츠 시작-->
	   <div id="contentBox">
	      <fieldset>
	        <h1>LOG IN</h1><br>
	        <div class="id">
	          아이디&nbsp;&nbsp;&nbsp;&nbsp;<input id="login" name="user_id" type="text" maxlength="100" placeholder="아이디"><Br>
	          비밀번호&nbsp;<input id="login" name="user_password" type="password" maxlength="100" placeholder="비밀번호">
	          <input class="saveCheck" name="id_save" type="checkbox">&nbsp;아이디 저장<br>
	          <button class="loginBtn" type="submit">로그인</button><br>
	          <a class="findLink" href="../login/find_id_pwd.html">아이디 | 비밀번호 찾기</a>
	        </div>
	      </fieldset>
	  </div>
      <!--메인 컨텐츠 끝-->
  </div>
 <%@include file ="../footer.jsp" %>
</body>
</html>