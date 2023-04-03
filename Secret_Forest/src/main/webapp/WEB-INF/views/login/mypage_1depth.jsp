<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="/resources/CSS/mypage_1depth.css">
<title>my page</title>
</head>
<body>
 <%@ include file ="../header.jsp" %>
  <div id="page">
  <!--메인 컨텐츠 시작-->
    <!-- s: 마이 페이지 둘중하나 선택 -->
    <div class="selectwrap">
      <h1 style="color: rgb(107, 107, 107);">my page</h1><br><br>
      <div class="tab-wrapper">
        <ul class="selectBtnBox">
          <li ><a href="#"><div id="selectBtn">주문 내역<img src="resources/image/etc/order_icon.png"></div></a></li>
          <li><a href="#" onclick="location.href='modify_user'"><div id="selectBtn">회원 정보 수정<img src="resources/image/etc/userinfo_icon.png"></div></a></li>
        </ul>
      </div> 
    </div>    
    <!-- e: 마이 페이지 둘중하나 선택 -->
   <!--메인 컨텐츠 끝-->
  </div>
 <%@include file ="../footer.jsp" %>
</body>
</html>