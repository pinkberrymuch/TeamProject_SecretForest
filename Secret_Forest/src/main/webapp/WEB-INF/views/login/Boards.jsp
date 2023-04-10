<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="/resources/CSS/login.css">
<title>Board</title>

<style type="text/css">

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}
#page {
  width: 1280px;
  margin: 0 auto;
  padding-bottom: 50px;
  padding-top: 20px;
}
 h3,p {text-align: left;}
  #reviewTable { 
	  border: 1px #0c0b3679 solid;
	  font-size: .9em;
	  box-shadow: 0 2px 5px rgba(0,0,0,.25);
	  width: 1250px;
	  border-collapse: collapse;
	  border-radius: 5px;
		margin-left: 20px;
	  overflow: hidden;;
  }
  #reviewTable th {
 	 text-align: left;
  }
  
  #reviewTable thead {
	  font-weight: bold;
	  color: #fff;
	  background: rgba(0,0,0,.25);
  }
   #reviewTable thead td {
	  font-weight: bold;
	  color: #fff;
	  background: rgba(0,0,0,.25);
  }
  
  #reviewTable td, th {
	  padding: 1em .5em;
	  vertical-align: middle;
  }
  
  #reviewTable td {
	  border-bottom: 1px solid rgba(0,0,0,.1);
	  background: #fff;
  }

 #chkBtn {
  float: right;
  width:70px; height:30px;
  background-color: #0c0b36d2;
  color: white;
  border: none;
  border-radius: 10px;
  margin-bottom: 10px;
	margin-right: 10px;
 }
 #chkBtn:hover {
  color: #0c0b36d2;
  background-color: white;
}
</style>
</head>

<body>
 <%@ include file ="../header.jsp" %>
  <div id="page">
   <!--메인 컨텐츠 시작-->
	   <div id="contentBox"> 
				<h3 style="font-size: 25px; font-weight:bold; color: #2b2a29;">고객 한줄 리뷰</h3><br>
				<p style="font-size: 14px; color: #81817f;">소중한 리뷰 한줄로 시크릿 포레스트는 오늘도 아름다운 꽃을 피웁니다</p>
				<br> 
	     <a href="#" onclick="location.href='board'"><input type="button" id="chkBtn" value="리뷰 작성"/></a>
	     <table  id="reviewTable">
	       <thead>
	         <td>No.</td>
	         <td>제목</td>
	         <td>내용</td>
	         <td>작성자</td>
	         <td>작성 일자</td>
	       </thead>
	       <tbody>
	       <c:forEach items="${list}" var="board">
	       <tr>
	         <td>${board.review_num}</td>
	         <td>${board.review_title}</td>
	         <td>${board.review_content}</td>
	         <td>${board.writer}</td>
	         <td>${board.write_date}</td>
	       </tr> 
	       </c:forEach>
	       </tbody>
	     </table>
	  </div>
      <!--메인 컨텐츠 끝-->
  </div>
 <%@include file ="../footer.jsp" %>
</body>
</html>