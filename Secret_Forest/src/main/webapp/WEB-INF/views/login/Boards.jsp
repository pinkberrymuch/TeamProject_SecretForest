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
img { margin-top:-70px;  width:1280px; height: 340px; }
 h2,p {text-align: left;}
  #reviewTable { 
	  border: 1px #a39485 solid;
	  font-size: .9em;
	  box-shadow: 0 2px 5px rgba(0,0,0,.25);
	  width: 100%;
	  border-collapse: collapse;
	  border-radius: 5px;
	  overflow: hidden;;
  }
  #reviewTable th {
 	 text-align: left;
  }
  
  #reviewTable thead {
	  font-weight: bold;
	  color: #fff;
	  background: #73685d;
  }
   #reviewTable thead td {
	  font-weight: bold;
	  color: #fff;
	  background: #73685d;
  }
  
  #reviewTable td, th {
	  padding: 1em .5em;
	  vertical-align: middle;
  }
  
  #reviewTable td {
	  border-bottom: 1px solid rgba(0,0,0,.1);
	  background: #fff;
  }

 #reviewTable a {
 	 color: #73685d;
 }
 #chkBtn {
  float: right;
  width:70px; height:30px;
  background-color: #73685d;
  color: white;
  border: none;
  border-radius: 40px;
  margin-bottom: 10px;
 }
 #chkBtn:hover {
  border:2px solid #73685d;
  color: #73685d;
  background-color: white;

}

</style>
</head>

<body>
 <%@ include file ="../header.jsp" %>
  <div id="page">
   <!--메인 컨텐츠 시작-->
	   <div id="contentBox"> 
         <img src="resources/image/etc/reviewPhoto.JPG" alt="photo" >
	     <br>    
	     <input type="button" id="chkBtn" value="리뷰 작성"/>
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
	         <td>
		         <fmt:formatDate value="${board.write_date}" pattern="yyyy-MM-dd"/>
	         </td>
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