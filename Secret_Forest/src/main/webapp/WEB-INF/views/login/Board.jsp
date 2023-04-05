<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="/resources/CSS/login.css">
<title>Board</title>
</head>
<body>
 <%@ include file ="../header.jsp" %>
  <div id="page">
   <!--메인 컨텐츠 시작-->
	 <div id="contentBox">
       <h2>한줄리뷰 등록</h2>
       <!-- 사용자가 입력한 내용들을 서버로 전달하기 위해 form 태그 이용. action에는 요청을 수행할 서버의 주소를 입력  아직 만들지 않음. -->
	   <!-- <form id="frm" name="frm" method="post" action="/login/insertBoard.do">-->
			<table class="board_create">
				<tr>
					<td>제목</td>
					<td><input type="text" id="review_title" name="review_title"></td>
				</tr>
				<tr>
					<td colspan="2">
						<textarea id="review_content" name="review_content"></textarea>
					</td>
				</tr>
				<tr>
					<td>받은 날짜</td>
					<td><input type="date" id="write_date" name="write_date"></td>
				</tr>
				<tr>
					<td>작성자</td>
					<td><input type="text" id="writer" name="writer"></td>
				</tr>
			</table>
			<button id="account" class="chkBtn" type="submit">등록</button>
		<!--</form>-->
		<script>
		 $("#account").click(function() {
		        console.log('account check 클릭 ')
		        let data = {
		        	review_title: $("#review_title").val(),
		        	review_content: $("#review_content").val(),
		        	writer: $("#writer").val()   
		        };
		        console.log(data)
		        $.ajax({
		            url: "/createBoard",
		            type: "POST",
		            data: JSON.stringify(data),
		            contentType: "application/json",
		            success: function() {
		                    alert("리뷰 등록이 완료되었습니다!");
		                    location.href="http://localhost:8080/boardList.do";
		            },
		            error: function() {
		                    alert("리뷰 등록에 실패 하였습니다..");   
		            }
		       
		        });
		    });
	    </script>
	 </div>
      <!--메인 컨텐츠 끝-->
  </div>
 <%@include file ="../footer.jsp" %>
</body>
</html>