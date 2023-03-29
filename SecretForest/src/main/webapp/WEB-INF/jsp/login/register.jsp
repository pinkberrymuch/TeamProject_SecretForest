<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

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
	              <th>이름<img src="resources/image/etc/check.png"></th>
	              <td><input id="register" type="text" name="user_name" required></td>
	            </tr>
	            <tr>
	              <th>아이디<img src="resources/image/etc/check.png"></th>
	              <td><input id="register" type="text" name="user_id" required></td>
	              <td><button type="button" id="idCheckBtn">중복 확인</button></td>
	            </tr>
	            <tr>
                    <td>&nbsp;사용할 아이디</td>
                    <td>
                        <input type="text" id="id" name="id" size="20" readonly />
                    </td>
                </tr>
	            <tr><td><p id="idcheck"></p></td></tr>
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
	        <button id="account" class="chkBtn" type="submit">회원 가입</button>
	      </fieldset>
	  <!--   </form> -->   
    </div>
    <script>

        $(document).ready(function() {

            // 아이디 중복 검사에 대한 로직이다. `getId`에 입력받은 아이디를 JSON 형식으로 POST 요청을 통해 넘겨준다.

            // 이를 통해 서버단으로부터 전달받은 내용(`res`)가 각각 어떤 메시지를 리턴해주는가에 따른 작업을 처리한다.


            $("#idCheckBtn").click(function() {
                $.ajax({
                    url: "http://localhost:8082/getId",
                    type: "POST",
                    data: { "id": $("#user_id").val() },
                    success: function(res) {
                        // alert('success')
                        if(res.trim() == 'ok') {
                            $("#idcheck").html("사용 가능한 아이디입니다.");
                            $("#id").val($("#user_id").val());
                        } else {
                            $("#idcheck").html("사용할 수 없는 아이디입니다.");
                            $("#user_id").val("");
                            $("#user_id").focus();
                        }
                    },
                    error: function() {
                        alert('error')
                    }
                });
            });


            // 가입버튼을 클릭했을 때 처리해줄 내용
            // addMember에 POST로 요청을 보낸다. 이 때 보낼 정보는 data로 지정된 JSON 형식의 자바스크립트 객체이다.
            $("#account").click(function() {

                $.ajax({
                    url: "http://localhost:8082/addMember",
                    type: "POST",
                    data: {
                        "id": $("#user_id").val(),
                        "pwd": $("#user_password").val(),
                        "name": $("#user_iname").val(),
                        "email": $("#user_email").val(),
                        "phone": $("#user_phone").val(),
                        "address": $("#user_address").val(),
                    },

                    // 마찬가지로 리턴받은 메시지(res)의 결과에 따라 처리해준다.
                    success: function(res) {
                        if(res.trim() == 'ok') {
                            console.log(res);
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
                    }
                });
            });
    </script>
    <!--메인 컨텐츠 끝-->
  </div>
 <%@include file ="../footer.jsp" %>
</body>
</html>