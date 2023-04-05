<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="/resources/CSS/login.css">
<title>Log in</title>
</head>
<body>
 <%@ include file ="../header.jsp" %>
  <div id="page">
   <!--메인 컨텐츠 시작-->
	   <div id="contentBox">
	      <fieldset>
	        <h1 style="font-size: 30px; font-weight:bold; color: rgb(107, 107, 107);">Sign in</h1>
	        <span style="font-size: 14px; color: #2e4103;">로그인 후 더 많은 기능을 누려보세요</span><br><br>
	        <div id="loginUser">
	          아이디&nbsp;&nbsp;&nbsp;&nbsp;<input id="user_id" name="user_id" type="text" maxlength="100" placeholder="아이디를 입력 하세요"><Br>
	          비밀번호&nbsp;<input id="user_password" name="user_password" type="password" maxlength="100" placeholder="비밀번호를 입력 하세요">
	          <input class="saveCheck" name="id_save" type="checkbox">&nbsp;<span style="font-size: 12px;">아이디 저장</span><br>
	          <button id="loginBtn" type="submit">로그인</button><br>
	          <div class="findLink">아직 회원이 아니신가요?<a href="#" onclick="location.href='register'"><b>회원가입</b></a></div>
	        </div>
	      </fieldset>
	  </div>
      <!--메인 컨텐츠 끝-->
       <script>
        // 로그인시 입력한 아이디와 비밀번호를 넘겨준다.
        // 서버단의 로그인 함수가 MemberDto를 반환하기 때문에 프론트엔드단에서 JSON 형태로 넘어온다.
        // 아무것도 입력하지 않으면 JSON의 각 Key에 대한 Value가 비어있을 것이기 때문에 조건식으로 검사해준다.
        // 로그인이 처리되어 정상적으로 넘어왔다면 sessionStorage에 로그인 정보를 저장해서 다른 페이지로 넘겨줄 것이다.
          $(document).ready(function() { 
           $("#loginBtn").click(function() {
            	console.log('로그인 버튼 클릭 ')
                let data = {
            		user_id: $("#user_id").val(),
            		user_password: $("#user_password").val(),
            	};
            	console.log(data)
                $.ajax({
                    url: "/login",
                    type: "POST",
                    data: JSON.stringify(data),
                    contentType: "application/json",
                    success: function(response) {
                        // alert('success');
                        if(response === "") {
                            alert("아이디 또는 비밀번호를 확인하세요.");
                            $("#user_id").val("");
                            $("#user_password").val("");
                        } else {
                            // 로그인 정보를 세션에 저장      
                            sessionStorage.setItem("/login", JSON.stringify(response));
                            alert('로그인 성공! 환영합니다~');
                            location.href = "http://localhost:8080/main";
                        }
                    },
                    error: function() {
                        alert('error');
                    }
                });
            });
          });   
    </script>
  </div>
 <%@include file ="../footer.jsp" %>
</body>
</html>