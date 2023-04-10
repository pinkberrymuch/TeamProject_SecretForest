<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style>
	th p {color: #0c0b36d2; font-weight: bold;}
#contentBox {
	margin-bottom: 40px;
	padding-left: 35%;
}	
#review_title{
  height:48px; width:450px;
  padding-left:15px;
  margin: 10px 0;
  box-shadow: inset 0 3px 3px -3px #333;
  border: 1px solid #ddd;
  border-radius: 5px;
}
#review_title:focus {
  border-color:#0c0b36a4;
  outline: none;
}
#review_content{
  height:100px; width:450px;
	resize: none;
  padding-left:15px;
	padding-top: 30px;
  margin: 10px 0;
  box-shadow: inset 0 3px 3px -3px #333;
  border: 2px solid #ddd;
  border-radius: 5px;
}
#review_content:focus {
  border: 1px solid #EDB73E;
  outline: none;
}
#write_date{
  height:48px; width:450px;
  padding-left:15px;
  margin: 10px 0;
  box-shadow: inset 0 3px 3px -3px #333;
  border: 1px solid #ddd;
  border-radius: 5px;
}
#write_date:focus {
  border-color:#0c0b36a4;
  outline: none;
}
#writer{
  height:48px; width:450px;
  padding-left:15px;
  margin: 10px 0;
  box-shadow: inset 0 3px 3px -3px #333;
  border: 1px solid #ddd;
  border-radius: 5px;
}
#writer:focus {
  border-color:#0c0b36a4;
  outline: none;
}
.chkBtn {
  border: none;
  border-radius:10px;
  text-align: center;
  background-color: #0c0b36;
  color: white;
  font-weight: bold;
  text-align: center;
  margin-top: 50px;
  width: 130px;
  height:38px;
  font-size: 13px;
  cursor: pointer;
}
.chkBtn:hover {
  background-color:#17173b;
}
.chkBtn:active {
  background-color: #58548d;
  border: 2px solid #0c0b36;
  color: #2b2828;
}
</style>
<title>Board</title>
</head>
<body>
 <%@ include file ="../header.jsp" %>
  <div id="page">
   <!--메인 컨텐츠 시작-->
	 <div id="contentBox">
      <h3 style="font-size: 25px; font-weight:bold; color: #2b2a29;">리뷰 등록</h3><br>
      <!-- 사용자가 입력한 내용들을 서버로 전달하기 위해 form 태그 이용. action에는 요청을 수행할 서버의 주소를 입력  아직 만들지 않음. -->
	    <!-- <form id="frm" name="frm" method="post" action="/login/insertBoard.do">-->
				<table class="board_create">
					<tr>
						<td><input type="text" id="review_title" name="review_title" placeholder="제목을 입력 하세요" required></td>
					</tr>
					<tr> </tr>
					<tr>
						<td>
							<textarea id="review_content" name="review_content" placeholder="내용을 입력 하세요" required></textarea>
						</td>
					</tr>
					<tr>
						<td><p style="color: #045FB4; font-size: 13px; text-align: center;">욕설, 비방, 상품 리뷰와 관련 없는 내용은 무통보 삭제 될 수 있습니다.</p></td>
					</tr>
					<tr>
						<td><input type="text" id="write_date" name="write_date" placeholder="받은 날짜를 입력하세요 (ex.2023-01-01)" required></td>
					</tr>
					<tr>
						<td><input type="text" id="writer" name="writer" placeholder="작성자 정보를 입력 하세요 (이름,익명 가능) " required></td>
					</tr>
				</table>
				<button id="account" class="chkBtn" type="submit">등록</button>
		  <!--</form>-->
    </div>
 		<script>
		 $("#account").click(function() {
				console.log('account check 클릭 ')
				let data = {
					review_title: $("#review_title").val(),
					review_content: $("#review_content").val(),
					write_date: $("#write_date").val(),
					writer: $("#writer").val()   
				};
				console.log(data)
				$.ajax({
						url: "/boardList.do",
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
    <!--메인 컨텐츠 끝-->
  </div>
 <%@include file ="../footer.jsp" %>
</body>
</html>