<%@page import="com.fasterxml.jackson.annotation.JsonInclude.Include"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../resources/CSS/main.css">
<title>Secret forest</title>
</head>
<body>
<%@ include file ="header.jsp" %> 
 <div id="page">
    <!--메인 컨텐츠 시작-->
    <div id="contentBox">
      <div id="simpleOrder">
          <div class="simpleOrderText">
            <span style="font-weight: bold; font-size: 24px; color: #64625e;">간편 취향 TEST</span><br>
            <p style="color: #4e6d07;">나에게, 소중한 그 사람에게는 어떤 꽃이 어울릴까?</p> 
          </div>
          <div id="simpleOrderBox">
            <div class="simpleOrderTo">
		      <form action="">
				<table>
				  <legend>------------------------------<h3>취향을 선택해 보세요</h3>------------------------------</legend>
				  <tr>
				    <td>
						<input type='radio'id="simpleTest" onclick="changeImageRose()" name='simpleTest'
							 value='/resources/image/prod_category/simpleTest/rose.JPG'>&nbsp;감성적이고 이벤트를 좋아한다<br><br><br>
						<input type='radio' id="simpleTest" onclick="changeImageOrien()" name='simpleTest'
							 value='/resources/image/prod_category/simpleTest/oriental.JPG'>&nbsp;명예,지위를 중요시 하고, 모임이 많다<br><br><br>
					    <input type='radio' id="simpleTest" onclick="changeImageDry()" name='simpleTest'
							 value='/resources/image/prod_category/simpleTest/dry.JPG'>&nbsp;귀찮은건 질색! 심플하고 깔끔한 분위기를 선호한다<br><br><br>
					    <input type='radio' id="simpleTest" onclick="changeImageAir()" name='simpleTest'
							 value='/resources/image/prod_category/simpleTest/air.JPG'>&nbsp;맑은 공기를 만끽하러 여행을 다닌다<br><br><br>
						<input type='radio' id="simpleTest" onclick="changeImageTropical()" name='simpleTest'
							 value='/resources/image/prod_category/simpleTest/tropical.JPG'>&nbsp;북유럽풍 카페에서 커피한잔의 여유를 즐긴다<br>
			        </td>
				   <script>	
					 function changeImageRose(){
					 	 document.getElementById("myImg").src = "/resources/image/prod_category/simpleTest/rose.jpg";
					 }
					 function changeImageOrien(){
					 	 document.getElementById("myImg").src = "/resources/image/prod_category/simpleTest/oriental.JPG";
					 }
					 function changeImageDry(){
					 	 document.getElementById("myImg").src = "/resources/image/prod_category/simpleTest/dry.JPG";
					 }
					 function changeImageAir(){
					 	 document.getElementById("myImg").src = "/resources/image/prod_category/simpleTest/air.JPG";
					 }
					 function changeImageTropical(){
					 	 document.getElementById("myImg").src = "/resources/image/prod_category/simpleTest/tropical.JPG";
					 }
				  </script>
                </tr>
              </table>
            </div>
            <div id="imgBox">
              <IMG id="myImg" src="/resources/image/prod_category/simpleTest/basic.JPG">
            </div>
         </div> 
       </div>
       <div class="bestProd">
         <div class="textBox">
           <span style="font-weight: bold; font-size: 24px; color: #64625e;">인기 상품</span><br>
           <p style="color: #4e6d07;">시크릿 포레스트 베스트셀러를 소개합니다.</p> 
         </div>
	        <div class="imageBox">
	          <table>
	           <tr>
	             <td><a href="#"><div class="imgBox"><img src="resources/image/prod_category/flower_basket/flower_basket1.jpg" alt="wreath1"></div></a>
	               <br><p class="imgP">로맨틱 스프링</p>
	             </td> 
	             <td><a href="#"><div class="imgBox"><img src="resources/image/prod_category/bouquet/bouquet5.jpg" alt="wreath5"></div></a>
	               <br><p class="imgP">지금, 우리</p>
	             </td>  
	             <td><a href="#"><div class="imgBox"><img src="resources/image/prod_category/oriental_orchids/oriental_orchids3.jpg" alt="wreath3"></div></a>
	               <br><p class="imgP">긴기아난</p>
	             </td>  
	             <td><a href="#"><div class="imgBox"><img src="resources/image/prod_category/tropical_orchid/tropical_orchid9.jpg" alt="wreath9"></div></a>
	               <br><p class="imgP">노블레스</p>
	             </td>  
	             <td><a href="#"><div class="imgBox"><img src="resources/image/prod_category/flower_basket/flower_basket10.jpg" alt="wreath10"></div></a>
	               <br><p class="imgP">내 남자친구에게</p>
	             </td>  
	             <td><a href="#"><div class="imgBox"><img src="resources/image/prod_category/flower_basket/flower_basket4.jpg" alt="wreath4"></div></a>
	               <br><p class="imgP">소원을 담아</p>
	             </td>  
	             <td><a href="#"><div class="imgBox"><img src="resources/image/prod_category/bouquet/bouquet6.jpg" alt="wreath6"></div></a>
	               <br><p class="imgP">키싱부스</p>
	             </td>  
	             <td><a href="#"><div class="imgBox"><img src="resources/image/prod_category/flower_basket/flower_basket6.jpg" alt="wreath6"></div></a>
	               <br><p class="imgP">허니 멜로</p>
	             </td>  
	            </tr>
	          </table>
	        </div>
	     </div>       
	   <div id="banner">
	      <div class="simpleOrderText">
            <span style="font-weight: bold; font-size: 24px; color: #64625e;">빠른 배송 서비스</span><br>
            <p style="color: #4e6d07;">전국 어디에서든 다음날 바로 받아볼 수 있는 특별한 배송 서비스를 이용해 보세요</p> 
          </div>
	    <img src="resources/image/etc/mainBanner.JPG">
	   </div>
   </div>   
   <!--메인 컨텐츠 끝-->
 </div>
 <%@ include file ="footer.jsp" %> 
</body>
</html>