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
	      <fieldset>
	        <h1 style="font-size: 30px; color: rgb(107, 107, 107);">Join</h1>
	        <p style="font-size: 14px; color: #81817f;"><img src="resources/image/etc/check.png">&nbsp;아이콘은 필수 입력 항목입니다.</p>
	        <div>
	          <table>
	            <th>
	              <p>사이트 이용정보 입력</p>
	            </th>
	            <tr>
	              <td><input id="user_id" type="text" name="user_id" required placeholder="아이디"></td>
	              <td></td><td><button type="button" id="idCheckBtn">중복 확인</button></td>
	            </tr>
	            <tr>
	              <td><p id="idcheck"></p></td>
	            </tr>

                <tr>
	              <td><input id="user_name" type="text" name="user_name" required placeholder="이름"></td>
	            </tr>
	            <tr>
	              <td><input id="user_password" type="password" name="user_password" placeholder="비밀번호" required></td>
	            </tr>
	            <tr></tr>
                <th>
	              <p>개인정보 입력</p>
	            </th>
	            <tr>
	              <td><input id="user_email" type="text" name="user_email" placeholder="이메일"></td>
	            </tr>
	            <tr>
              <td><input id="user_phone" type="text" name="user_phone" placeholder="- 빼고 입력하세요" required></td>
	            </tr>
	            <tr>
	              <td><input id="user_address" type="text" name="user_address" required placeholder="주소"></td>
	            </tr>
	            <tr></tr>
	            <th>
	              <p>기타 개인설정</p>
	            </th>  
	          </table>
	          <div class="tbl_wrap">
		        <ul>
		            <li class="opt_chk">
		                <label for="reg_mb_mailling" class="frm_label">메일링서비스</label>
		                <input type="checkbox" name="mb_mailling" value="1" id="reg_mb_mailling" checked>
		                정보 메일을 받겠습니다.  
		            </li>
		            <li>
		            	<span class="opt_chk">
		                	<label for="reg_mb_open" class="frm_label">정보공개</label>
		                	<input type="hidden" name="mb_open_default" value="">
		                	<input type="checkbox" name="mb_open" value="1" checked id="reg_mb_open">
		                다른분들이 나의 정보를 볼 수 있도록 합니다.
		                </span><br>
		                <span class="frm_info">
		                    정보공개를 바꾸시면 앞으로 0일 이내에는 변경이 안됩니다.
		                </span>                
		           </li>
		        </ul>
	          </div>
	        </div>
	        <button id="account" class="chkBtn" type="submit">회원 가입</button>
	      </fieldset>
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