<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="/resources/CSS/register.css">
<title>회원 가입</title>
</head>
<body>
 <%@ include file ="../header.jsp" %>
  <div id="page">
   <!--메인 컨텐츠 시작-->
    <div id="contentBox">
        <form id="frm" action="/addMember" method="post">
	      <fieldset>
	        <h1>Join</h1>
	        <p><img src="resources/image/etc/check.png">은 필수 입력 항목입니다.</p>
	        <div>
	          <table>
	            <colgroup>
	              <col width="180px">
	              <col>
	            </colgroup> 
	            <tr>
	              <th>이름<img src="resources/image/etc/check.png"></th>
	              <td><input id="register" type="text" name="user_name" required></td>
	            </tr>
	            <tr>
	              <th>아이디<img src="resources/image/etc/check.png"></th>
	              <td><input id="register" type="text" name="user_id" required></td>
	            </tr>
	            <tr>
	              <th>비밀번호<img src="resources/image/etc/check.png"></th>
	              <td><input id="register" type="password" name="user_password" placeholder="영문,숫자,특수문자 포함 8자이상" required></td>
	            </tr>

	            <tr>
	              <th>이메일</th>
	              <td><input id="register" type="text" name="user_email"></td>
	            </tr>
	            <tr>
	              <th>휴대폰 번호<img src="resources/image/etc/check.png"></th>
	              <td><input id="register" type="text" name="user_phone" required></td>
	            </tr>
	            <tr>
	              <th>주소<img src="resources/image/etc/check.png"></th>
	              <td><input id="register" type="text" name="user_adress" required></td>
	            </tr>
	          </table>
	        </div>
	        <button type="submit">회원 가입</button>
	      </fieldset>
	   </form>   
    </div>
    <!--메인 컨텐츠 끝-->
  </div>
 <%@include file ="../footer.jsp" %>
</body>
</html>