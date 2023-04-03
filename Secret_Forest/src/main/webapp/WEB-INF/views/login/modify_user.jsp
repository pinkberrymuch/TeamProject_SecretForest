<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="/resources/CSS/register.css">
<title>회원 정보 수정</title>
</head>
<body>
 <%@ include file ="../header.jsp" %>
  <div id="page">
   <!--메인 컨텐츠 시작-->
    <div id="contentBox">
      <fieldset>
        <h1>회원 정보 수정</h1>
        <p>변경할 정보를 입력 하세요</p>
        <div>
          <table>
            <colgroup>
              <col width="180px">
              <col>
            </colgroup> 
            <tr>
              <th>기존 비밀번호</th>
              <td><input id="register" type="password" name="user_password" placeholder="영문,숫자,특수문자 포함 8자이상"></td>
            </tr>
            <tr>
              <th>새로운 비밀번호</th>
              <td><input id="register" type="password" name="user_password2" placeholder="영문,숫자,특수문자 포함 8자이상"></td>
            </tr>
            <tr>
              <th>변경할 이메일</th>
              <td><input id="register" type="text" name="user_email"></td>
            </tr>
            <tr>
              <th>변경할 연락처</th>
              <td><input id="register" type="text" name="user_phone"></td>
            </tr>
            <tr>
              <th>변경할 주소</th>
              <td><input id="register" type="text" name="user_adress"></td>
            </tr>
          </table>
        </div>
        <button type="submit">저 &nbsp;장</button>
      </fieldset>
    </div>
    <!--메인 컨텐츠 끝-->
  </div>
 <%@include file ="../footer.jsp" %>
</body>
</html>