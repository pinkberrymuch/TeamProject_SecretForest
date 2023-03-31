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
        <div class="logoIntop" align="left">Secret Forest</div>
        <table>
          <tr><a href="#" onclick="location.href='login'">Login</a></tr>
          <tr><a href="#" onclick="location.href='register'">Join</a></tr>
          <tr><a href="#" onclick="location.href='mypage_1depth'">Mypage</a></tr>
          <tr><a href="../login/cart.html">Cart</a></tr>
          <tr><a href="#" onclick="location.href='login'">review</a></tr>
        </table>  
      </div>  
       <!--e: 탑 메뉴-->

    
     <div id="centerBox">
      
          <div class="color_Box">
	        <table class="colortable" >
	          <tr>
	            <td><div id="colorT">색상 필터</div></td>
	            <td><a href="#" onclick="location.href='red_search'"><div id="colorS" class="red"></div></a></td>
	            <td><a href="#" onclick="location.href='orange_search'"><div id="colorS" class="orange"></div></a></td>
	            <td><a href="#" onclick="location.href='yellow_search'"><div id="colorS" class="yellow"></div></a></td>
	            <td><a href="#" onclick="location.href='green_search'"><div id="colorS" class="green"></div></a></td>
	            <td><a href="#" onclick="location.href='blue_search'"><div id="colorS" class="blue"></div></a></td>
	            <td><a href="#" onclick="location.href='white_search'"><div id="colorS" class="white"></div></a></td>
	          </tr>
	        </table> 
	      </div>
	      
	      <!--로고-->
	      <div class="logoBox">
		     <a href="#" onclick="location.href='main'" id="logo">
		       Secret Forest
		     </a>
	      </div>
	      <!-- s: 검색 아이콘(일반+컬러 필터)-->
	      <div id="search_box">
            <form action=""> 
               <div id="search">
                 <input type="text" maxlength="100" placeholder="상품을 검색 하세요">
                 <button type="submit">GO</button>
              </div> 
            </form>
	      </div>
	      <script>
	        const button = document.querySelector('button');
	        const buttonClickHandler = () =>{
	              alert('Button clicked!');
	            }
	        button.addEventListener('click',buttonClickHandler);
	       //button.removeEventListener('click', buttonClickHandler);
	      </script>
	      <!--e: 검색 아이콘(일반+컬러 필터)-->
	   </div>
  
         <!--s: 카테고리-->
	      <div id="categoryBox"> 
	        <table id="categoryTable"  align="center">
	          <tr>
	           <td><a href="#" onclick="location.href='bouquet'">꽃 다발</a></td>
	           <td><a href="#" onclick="location.href='flower_basket'">꽃 바구니</a></td>
	           <td><a href="#" onclick="location.href='oriental_orchids'">동양란</a></td>
	           <td><a href="#" onclick="location.href='tropical_orchids'">서양란</a></td>
	           <td><a href="#" onclick="location.href='condolences_wreath'">근조 화환</a></td>
	           <td><a href="#" onclick="location.href='congratulatory_wreath'">축하 화환</a></td>
	           <td><a href="#" onclick="location.href='etc'">기타</a></td>
	          </tr>
	        </table>
	      </div> 
	      <hr class="grayHR">
     </div>  
      <!--e: 카테고리-->

    </header>
  </div>  
</body>
</html>