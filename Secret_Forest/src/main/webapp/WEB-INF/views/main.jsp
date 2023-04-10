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
			<div id="colorGarden">
				<div class="textBox">
					<span style="font-size: 20px; font-weight: bold; font-family:'EuroRoman'; letter-spacing: 1.3px; color: #2b2a29be;">Color forest</span><br>
					<p style="color: #81817f;">다채로운 색상으로 만나보는 Color 카테고리로 원하는 상품을 찾아보세요</p> 
				</div>
				<div class="color_Box">
					<table class="colortable" >
						<tr>
							<td><a href="#" onclick="location.href='red_search'"><div id="colorS" class="red"></div></a></td>
							<td><a href="#" onclick="location.href='orange_search'"><div id="colorS" class="orange"></div></a></td>
							<td><a href="#" onclick="location.href='yellow_search'"><div id="colorS" class="yellow"></div></a></td>
							<td><a href="#" onclick="location.href='green_search'"><div id="colorS" class="green"></div></a></td>
							<td><a href="#" onclick="location.href='blue_search'"><div id="colorS" class="blue"></div></a></td>
							<td><a href="#" onclick="location.href='white_search'"><div id="colorS" class="white"></div></a></td>
						</tr>
					</table> 
				</div>
			</div>	
			
			<!--s: 카카오맵 API-->
			<div id="apiMap">
				<span style="font-size: 20px; font-weight: bold; font-family:'EuroRoman'; letter-spacing: 1.3px; color: #2b2a29be;">Where<br> Secret forest?</span><br>
		  	<div id="map"> 
					<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=57ef6e1db3d714fe31a3f93a9746b5c1"></script>
					<!-- * 카카오맵 - 지도퍼가기 -->
					<!-- 1. 지도 노드 -->
					<div id="daumRoughmapContainer1681109280345" class="root_daum_roughmap root_daum_roughmap_landing"></div>

					<!--
						2. 설치 스크립트
						* 지도 퍼가기 서비스를 2개 이상 넣을 경우, 설치 스크립트는 하나만 삽입합니다.
					-->
					<script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>

					<!-- 3. 실행 스크립트 -->
					<script charset="UTF-8">
						new daum.roughmap.Lander({
							"timestamp" : "1681109280345",
							"key" : "2edvi",
							"mapWidth" : "900",
							"mapHeight" : "440"
						}).render();
					</script>
				</div>	
				<div class="mapText">
					<span style="font-size: 18px; font-weight: bold; font-family:'EuroRoman'; letter-spacing: 1.3px; color: #2b2a29be;">Secret forest</span><br>
					<span style="font-size: 14px; font-weight: bold; font-family:'EuroRoman'; letter-spacing: 1.3px; color: #2b2a29be;">031-333-3333</span><br><br>
					<span style="font-size: 14px; font-weight: bold; font-family:'EuroRoman'; letter-spacing: 1.3px; color: #2b2a29be;">
						영업시간<br> 월~금 09:00 ~ 21:50 <br></span><br>
				  <span style="font-size: 14px; font-weight: bold; font-family:'EuroRoman'; letter-spacing: 1.3px; color: #be8c1ef8;">
						휴무 : 토,일요일 공휴일<br>
				 </span>
				</div>
		  </div>	
			<!--e: 카카오맵 API-->


		 <!-- s: 카테고리 -->
		 <div class="categoryProd.Box">
				<span style="font-size: 20px; font-weight: bold; font-family:'EuroRoman'; letter-spacing: 1.3px; color: #2b2a29be;">Category forest</span><br>
				<div class="imageBox">
					<table>
						<tr>
							<td><a href="#" onclick="location.href='bouquet'"><div class="imgBox"><img src="resources/image/prod_category/bouquet/bouquet5.jpg" alt="bouquet"></div></a>
								<br><p class="imgP">꽃다발</p>
							</td> 
							<td><a href="#" onclick="location.href='flower_basket'"><div class="imgBox"><img src="resources/image/prod_category/flower_basket/flower_basket10.jpg" alt="basket"></div></a>
								<br><p class="imgP">꽃바구니</p>
							</td>  
							<td><a href="#" onclick="location.href='etc'"><div class="imgBox"><img src="resources/image/prod_category/etc/air_cleaning2.jpg" alt="air"></div></a>
								<br><p class="imgP">공기정화식물</p>
							</td>  
							<td><a href="#" onclick="location.href='tropical_orchids'"><div class="imgBox"><img src="resources/image/prod_category/tropical_orchid/tropical_orchid9.jpg" alt="tropical"></div></a>
								<br><p class="imgP">서양란</p>
							</td>  
							<td><a href="#" onclick="location.href='oriental_orchids'"><div class="imgBox"><img src="resources/image/prod_category/oriental_orchids/oriental_orchids2.jpg" alt="oriental"></div></a>
								<br><p class="imgP">동양란</p>
							</td>  
							<td><a href="#" onclick="location.href='congratulatory_wreath'"><div class="imgBox"><img src="resources/image/prod_category/congratulatory_wreath/congratulatory_wreath8.jpg" alt="wreath6"></div></a>
								<br><p class="imgP">화환</p>
							</td>   
						</tr>
					</table>
				</div>
		 </div>	
		 <!-- e: 카테고리 -->

		 <div id="simpleOrder">
			 <div id="simpleOrderBox">
				<span style="font-size: 20px; font-weight: bold; font-family:'EuroRoman'; letter-spacing: 1.3px; color: #2b2a29be;">Special forest</span><br>
				 <div class="simpleOrderImg"><img src="resources/image/etc/main_photo.png"></div>
				 <div class="simpleOrderTo">
						<table>
							<br>
							<legend><h4> 어떤 꽃을 고를지 모르겠다면? 취향을 선택해 보세요</h4></legend>
							<tr>
								<td>
									<input type='radio'id="simpleTest" onclick="changeImageRose()" name='simpleTest'
										value='/resources/image/prod_category/simpleTest/rose.JPG'>&nbsp;감성적이고 이벤트를 좋아한다<br><br>
									<input type='radio' id="simpleTest" onclick="changeImageOrien()" name='simpleTest'
										value='/resources/image/prod_category/simpleTest/oriental.JPG'>&nbsp;명예,지위를 중요시 하고, 모임이 많다<br><br>
									<input type='radio' id="simpleTest" onclick="changeImageDry()" name='simpleTest'
										value='/resources/image/prod_category/simpleTest/dry.JPG'>&nbsp;귀찮은건 질색! 심플하고 깔끔한 분위기를 선호한다<br><br>
									<input type='radio' id="simpleTest" onclick="changeImageAir()" name='simpleTest'
										value='/resources/image/prod_category/simpleTest/air.JPG'>&nbsp;맑은 공기를 만끽하러 정적인 숲으로 여행을 다닌다<br><br>
									<input type='radio' id="simpleTest" onclick="changeImageTropical()" name='simpleTest'
										value='/resources/image/prod_category/simpleTest/tropical.JPG'>&nbsp;북유럽풍 카페에서 커피 한 잔의 여유를 즐긴다<br>
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
	    <div id="banner">
	      <div class="simpleOrderText">
					<span style="font-size: 20px; font-weight: bold; font-family:'EuroRoman'; letter-spacing: 1.3px; color: #2b2a29be;">Quick Delivery Service</span><br>
					<p style="color: #81817f;">빠르고 정확한 시크릿 포레스트만의 배송 서비스를 이용해 보세요</p> 
          </div>
	     <img src="resources/image/etc/mainBanner.JPG">
	   </div>
		 <div class="rolling_box">
			 <ul id ="rolling_box">
					<li class="card_sliding" id ="first"><p></p></li>
					<li class="" id ="second"><p></p></li>
					<li class="" id ="third"><p></p></li>
			 </ul>
		  </div>
			<script>
				let rollingData = [
												'화환 받았습니다.감동 ㅜㅜ lov** 님',
												'꽃이 왜이리 예쁠까요  fdo** 님',
												'배송 굳!  dia**님',
												'공기정화 식물 더 런칭해주세여 34s** 님',
												'남친이 넘 좋아해요 hot** 님',
												'번창하세요!! uka** 님',
												'아이 졸업식선물.. 기억에 남아요 ggg** 님',
												'근조 잘 마쳤음니다 감사함니다 76g** 님',
											]    // 롤링할 데이터

			let timer = 2000 // 롤링되는 주기 (1000 => 1초)

			let first = document.getElementById('first'),
					second = document.getElementById('second'),
					third = document.getElementById('third')
			let move = 2
			let dataCnt = 1
			let listCnt = 1

			first.children[0].innerHTML = rollingData[0]

				setInterval(() => {
				if(move == 2){
						first.classList.remove('card_sliding')
						first.classList.add('card_sliding_after')

						second.classList.remove('card_sliding_after')
						second.classList.add('card_sliding')

						third.classList.remove('card_sliding_after')
						third.classList.remove('card_sliding')

						move = 0
				} else if (move == 1){
						first.classList.remove('card_sliding_after')
						first.classList.add('card_sliding')

						second.classList.remove('card_sliding_after')
						second.classList.remove('card_sliding')

						third.classList.remove('card_sliding')
						third.classList.add('card_sliding_after')

						move = 2
				} else if (move == 0) {
						first.classList.remove('card_sliding_after')
						first.classList.remove('card_sliding')

						second.classList.remove('card_sliding')
						second.classList.add('card_sliding_after')

						third.classList.remove('card_sliding_after')
						third.classList.add('card_sliding')

						move = 1
				}
				
				if(dataCnt < (rollingData.length - 1)) {
						document.getElementById('rolling_box').children[listCnt].children[0].innerHTML = rollingData[dataCnt]
								dataCnt++
				} else if(dataCnt == rollingData.length - 1) {
						document.getElementById('rolling_box').children[listCnt].children[0].innerHTML = rollingData[dataCnt]
						dataCnt = 0
				}

				if(listCnt < 2) {
						listCnt++
				} else if (listCnt == 2) {
						listCnt = 0
				}

				console.log(listCnt)
				}, timer);
			</script>
		</div>	
   </div>   
   <!--메인 컨텐츠 끝-->
 </div>
 <%@ include file ="footer.jsp" %> 
</body>
</html>