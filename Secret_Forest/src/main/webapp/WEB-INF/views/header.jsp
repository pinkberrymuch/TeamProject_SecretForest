<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="/resources/CSS/header.css">
<title>header</title>
</head>
<body>
 <div id="page">
   <header>
      <!--s: 탑 메뉴-->
      <div id="topMenuBox" align="right"> 
        <div class="logoIntop" align="left"></div>
        <table>
          <tr><a href="#" onclick="location.href='login'">Login</a></tr>
          <tr><a href="#" onclick="location.href='registerAgree'">Join</a></tr>
        </table>  
      </div>  
      <!--e: 탑 메뉴-->

    
      <div id="centerBox">
	      <!--로고-->
	      <div class="logoBox">
		     <a href="#" onclick="location.href='main'" id="logo">
		      <span style="color: #080738; font-size: 20px; font-weight: bold; font-family:'EuroRoman'; letter-spacing: 1.3px;"> Secret Forest</span> 
		     </a>
	      </div>
	   </div>
  
      <!--s: 카테고리-->
	    <div id="categoryBox"> 
				<table id="categoryTable">
					<tr>
						<td><a href="#" onclick="location.href='bouquet'">꽃 다발</a></td>
						<td><a href="#" onclick="location.href='flower_basket'">꽃 바구니</a></td>
						<td><a href="#" onclick="location.href='oriental_orchids'">동양란</a></td>
						<td><a href="#" onclick="location.href='tropical_orchids'">서양란</a></td>
						<td><a href="#" onclick="location.href='condolences_wreath'">근조 화환</a></td>
						<td><a href="#" onclick="location.href='congratulatory_wreath'">축하 화환</a></td>
						<td><a href="#" onclick="location.href='etc'">기타</a></td>
						<td><a href="#" onclick="location.href='boardList.do'"><span style="font-size: 14px; font-weight: bold; color: #EDB73E;">한줄 리뷰</span></a></td>

					</tr>
				</table>
	    </div> 
	    <hr class="grayHR"> 
      <!--e: 카테고리-->
    </header>
  </div>  
</body>
</html>