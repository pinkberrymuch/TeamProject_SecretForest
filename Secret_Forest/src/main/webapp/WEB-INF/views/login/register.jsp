<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="/resources/CSS/register.css">
<title>회원 가입</title>
</head>
<body>
 <%@ include file ="../header.jsp" %>
  <div id="page">
   <!--메인 컨텐츠 시작-->
    <div id="contentBox">
        <!-- <form id="frm" action="/addMember" method="post">-->
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
	              <th>아이디<img src="resources/image/etc/check.png"></th>
	              <td><input id="user_id" type="text" name="user_id" required></td>
	              <td><button type="button" id="idCheckBtn">중복 확인</button></td>
	            </tr>
	            <tr>
	              <td> </td>
	              <td><p id="idcheck" style="color: blue"></p></td>
	            </tr>

                <tr>
	              <th>이름<img src="resources/image/etc/check.png"></th>
	              <td><input id="user_name" type="text" name="user_name" required></td>
	            </tr>
	            <tr>
	              <th>비밀번호<img src="resources/image/etc/check.png"></th>
	              <td><input id="user_password" type="password" name="user_password" placeholder="영문,숫자,특수문자 포함 8자이상" required></td>
	            </tr>

	            <tr>
	              <th>이메일</th>
	              <td><input id="user_email" type="text" name="user_email"></td>
	            </tr>
	            <tr>
	              <th>휴대폰 번호<img src="resources/image/etc/check.png"></th>
              <td><input id="user_phone" type="text" name="user_phone" placeholder="- 빼고 입력하세요" required></td>
	            </tr>
	            <tr>
	              <th>주소<img src="resources/image/etc/check.png"></th>
	              <td><input id="user_address" type="text" name="user_address" required></td>
	            </tr>
	          </table>
	        </div>
	        <button id="account" class="chkBtn" type="submit">회원 가입</button>
	      </fieldset>
	  <!--   </form> -->   
    </div>
    <script>
	    $("#idCheckBtn").click(function() {
	    	let user_id = {user_id: $("#user_id").val()};
	      console.log($("#user_id").val())
	        $.ajax({
	            url: "/getId",
	            type: "POST",
	            contentType: "application/json;charset=UTF-8",
	            data: JSON.stringify(user_id),
	            success: function(res) {
	                // alert('success')
	                if(res.trim() == 'ok') {
	                    $("#idcheck").text("사용 가능한 아이디입니다.");
	               
	                } else {
	                    $("#idcheck").html("사용할 수 없는 아이디입니다.");
	                }
	            },
	            error: function(error) {
	                // alert('error')
	                console.log(error)
	            }
	        });
	    });
	    $("#account").click(function() {
	        console.log('account check 클릭 ')
	        let data = {
	        	user_id: $("#user_id").val(),
	        	user_name: $("#user_name").val(),
	        	user_password: $("#user_password").val(),
	        	user_email: $("#user_email").val(),
	        	user_phone: $("#user_phone").val(),
	        	user_address: $("#user_address").val()
	        };
	        console.log(data)
	        $.ajax({
	            url: "/addMember",
	            type: "POST",
	            data: JSON.stringify(data),
	            contentType: "application/json",
	            success: function(response) {
	                if(response === "ok") {
	                    console.log(response);
	                    alert("가입되었습니다!");
	                    // location.href="login.html";
	                } else {
	                    alert("가입되지 않았습니다!");
	                    $("#user_id").val("");
	                    $("#user_password").val("");
	                    $("#user_name").val("");
	                    $("#user_email").val("");
	                    $("#user_phone").val("");
	                    $("#user_address").val("");
	                }
	            },
	            error: function(xhr, status, error) {
	                console.log(xhr);
	                console.log(status);
	                console.log(error);
	                alert("서버 오류가 발생했습니다.");
	            }
	        })
	    });
    </script>
    <!--메인 컨텐츠 끝-->
  </div>
 <%@include file ="../footer.jsp" %>
</body>
</html>