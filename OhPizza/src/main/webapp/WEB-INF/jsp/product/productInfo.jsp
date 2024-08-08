<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- 상품상세. -->
<head>
<style>
a {
	text-decoration-line: none;
	color: black;
}
</style>
</head>
<!-- 단건 출력 -->
<section class="py-5">
	<div class="container px-4 px-lg-5 my-5">
		<div class="row gx-4 gx-lg-5 align-items-center">
			<div class="col-md-6">
			<!--  history.back()을 사용하면 이전페이지로 돌아감 made by Jsuho -->
				<a href="productList.do?type=${prod.prodType }">목록으로</a>
				<p></p>
				<img class="card-img-top mb-5 mb-md-0" src="images/${prod.image}"
					alt="..." />
			</div>
			<div class="col-md-6">
				<c:choose>
					<c:when test="${0 != prod.priceL }">
						<div class="small mb-1">제품번호: ${prod.prodNo}</div>
						<h1 class="display-5 fw-bolder">${prod.prodName}</h1>
						<div class="fs-5 mb-5">
							<form>
								<input type=radio name=size value='M ${prod.priceM }' checked> M ${prod.priceM }    
								<input type=radio name=size value='L ${prod.priceL }'> L ${prod.priceL }
							</form>	
						</div>
						<p class="lead">${prod.prodDesc}</p>
						<div class="d-flex">
							<input class="form-control text-center me-3" id="inputQuantity"
								type="num" value="1" style="max-width: 3rem" />
							<button class="btn btn-outline-dark flex-shrink-0" type="button">
								<i class="bi-cart-fill me-1"></i> Add to cart
							</button>
						</div>
					</c:when>
					<c:otherwise>
						<div class="small mb-1">제품번호: ${prod.prodNo}</div>
						<h1 class="display-5 fw-bolder">${prod.prodName}</h1>
						<div class="fs-5 mb-5">
							<form>
								<input type=radio name=size value='M ${prod.priceM }' checked> \ ${prod.priceM }    
							</form>	
						</div>
						<p class="lead">${prod.prodDesc}</p>
						<div class="d-flex">
							<input class="form-control text-center me-3" id="inputQuantity"
								type="num" value="1" style="max-width: 3rem" />
							<button class="btn btn-outline-dark flex-shrink-0" type="button">
								<i class="bi-cart-fill me-1"></i> Add to cart
							</button>
						</div>
						<br><br>
						<div>
							<h2>주문금액 : &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp    <h3>${prod.priceM }</h3> 
						</div>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</div>
</section>



<link href="css/modal.css" rel="stylesheet">
<!-- 원산지정보 -->
  <!-- 모달 열기 버튼 -->
  <button id="modalBtn2">원산지정보</button>

  <!-- 모달 컨테이너 -->
  <div id="myModal2" class="modal">
    <!-- 모달 컨텐츠 -->
    <div class="modal-content">
      <!-- 모달 닫기 버튼 -->
      <span class="close" id="closeBtn2">&times;</span>
      <h2 class="h2">원산지정보</h2>


      <table border="2" class="table">
        <tr>
          <th>메뉴명</th>
          <th>원산지 정보</th>
        </tr>
        <tr>
          <td>시크릿가든</td>
          <td>케이준치킨 : 닭고기(국내산)</td>
        </tr>
        <tr>
          <td>더 히든 시크릿</td>
          <td>케이준치킨 : 닭고기(국내산), 미트토핑 : 쇠고기(호주산), 돼지고기(국내산)</td>
        </tr>
        <tr>
          <td>치즈어셈블</td>
          <td>그릴드비프스테이크 : 쇠고기(미국산), 미트토핑 : 쇠고기(호주산), 돼지고기(국내산)</td>
        </tr>
        <tr>
          <td>딜라이트치킨볼</td>
          <td>블랙닭가슴살미트볼 : 닭고기(국내산), 매콤닭가슴살미트볼 : 닭고기(국내산)</td>
        </tr>
        <tr>
          <td>포게더</td>
          <td>오징어 : 오징어(페루산), 미트토핑 : 쇠고기(호주산), 돼지고기(국내산), 베이컨 : 돼지고기(외국산), 레드와인스테이크 : 쇠고기(호주산), 페퍼로니 : 돼지고기(국내산), 쇠고기(호주산)</td>
        </tr>
        <tr>
          <td>킹 브레드 쉬림프 골드 칠리</td>
          <td>오징어 : 오징어(페루산)</td>
        </tr>
        <tr>
          <td>킹 브레드 쉬림프 골드</td>
          <td>오징어 : 오징어(페루산)</td>
        </tr>
        <tr>
          <td>햄벅한새우</td>
          <td>그릴비프 : 쇠고기(호주산), 돼지고기(국내산),레드와인스테이크 : 쇠고기(호주산), 미트토핑 : 쇠고기(호주산), 돼지고기(국내산), 베이컨 : 돼지고기(외국산)</td>
        </tr>
        <tr>
          <td>미스터트리오</td>
          <td>레드와인스테이크 : 쇠고기(호주산), 페퍼로니 돼지고기(국내산과 외국산 섞음), 쇠고기(호주산), 베이컨 : 돼지고기(외국산)</td>
        </tr>
        <tr>
          <td>치즈블라썸스테이크</td>
          <td>레드와인스테이크: 쇠고기(호주산), 페퍼로니(돼지고기:국내산과 외국산 섞음,쇠고기:호주산)</td>
        </tr>
        <tr>
          <td>새우천왕</td>
          <td>미트토핑: 돼지고기(국내산), 쇠고기(호주산) 소불고기 : 쇠고기(호주산), 베이컨 : 돼지고기(외국산)</td>
        </tr>
        <tr>
          <td>포테이토골드</td>
          <td>미트토핑:쇠고기(호주산),돼지고기(국내산),베이컨:돼지고기(외국산)</td>
        </tr>
        <tr>
          <td>쉬림프골드</td>
          <td>미트토핑:쇠고기(호주산),돼지고기(국내산),베이컨:돼지고기(외국산)</td>
        </tr>
        <tr>
          <td>하프앤하프</td>
          <td>미트토핑:쇠고기(호주산),돼지고기(국내산),베이컨:돼지고기(외국산)</td>
        </tr>
        <tr>
          <td>스윗고구마</td>
          <td>베이컨 : 돼지고기(외국산)</td>
        </tr>
        <tr>
          <td>페퍼로니 플러스</td>
          <td>페퍼로니 : 돼지고기(국내산), 쇠고기(호주산)</td>
        </tr>
        <tr>
          <td>하와이안스페셜</td>
          <td>카나디안햄 : 돼지고기(국내산과 외국산 섞음)</td>
        </tr>
        <tr>
          <td>콤비네이션</td>
          <td>미트토핑:쇠고기(호주산),돼지고기(국내산), 페퍼로니:돼지고기(국내산),쇠고기(호주산), 카나디안햄:돼지고기(국내산과 외국산 섞음), 베이컨:돼지고기(외국산)</td>
        </tr>
        <tr>
          <td>불고기피자</td>
          <td>소불고기:쇠고기(호주산)</td>
        </tr>
        <tr>
          <td>포테이토</td>
          <td>미트토핑:쇠고기(호주산), 돼지고기(국내산), 베이컨:돼지고기(외국산)</td>
        </tr>
        <tr>
          <td>베이크윙 / 핫윙</td>
          <td>닭고기(태국산)</td>
        </tr>
        <tr>
          <td>크리스피텐더치킨</td>
          <td>닭고기(태국산)</td>
        </tr>
        <tr>
          <td>베이컨 크림리조또</td>
          <td>야채밥:쌀(국내산),베이컨:돼지고기(외국산)</td>
        </tr>
        <tr>
          <td>쉬림프 까르보나라</td>
          <td>베이컨:돼지고기(외국산)</td>
        </tr>
        <tr>
          <td>오븐미트스파게티</td>
          <td>미트소스 : 돼지고기(국내산), 소고기(호주산)</td>
        </tr>
        <tr>
          <td>정통미트스파게티</td>
          <td>스파게티미트소스: 쇠고기(호주산), 돼지고기(국내산)</td>
        </tr>
        <tr>
          <td>오븐치즈베이컨크림스파게티</td>
          <td>베이컨:돼지고기(외국산)</td>
        </tr>
        <tr>
          <td>오븐치즈 씨푸드김치스파게티</td>
          <td>김치토마토소스 : 배추김치(고춧가루 : 중국산, 배추 : 국내산), 오징어(페루산)</td>
        </tr>
        <tr>
          <td>오븐치즈 씨푸드김치 리조또</td>
          <td>김치토마토소스 : 배추김치(고춧가루 : 중국산, 배추 : 국내산) 야채밥 : 쌀(국내산), 오징어(페루산)</td>
        </tr>
        <tr>
          <td>샐러드바 메뉴</td>
          <td>직화미트볼:돼지고기(국내산),닭고기(국내산),팝콘치킨:닭고기(국내산),스모크햄:돼지고기(외국산과 국내산 섞음),탕수육 : 돼지고기 (국내산),치킨가라아게 : 닭고기(브라질산)</td>
        </tr>
        <tr>
          <td>The 오븐치킨</td>
          <td>닭(국내산)</td>
        </tr>
        <tr>
          <td>하프치킨 (오븐치킨 반마리)</td>
          <td>닭(국내산)</td>
        </tr>
        <tr>
          <td>불고기샌드</td>
          <td>소불고기(쇠고기:호주산)</td>
        </tr>
        <tr>
          <td>쉬골샌드</td>
          <td>미트토핑(돼지고기: 국내산, 쇠고기 : 호주산), 베이컨(돼지고기 : 외국산)</td>
        </tr>
        <tr>
          <td>포골샌드</td>
          <td>미트토핑(돼지고기: 국내산, 쇠고기 : 호주산), 베이컨(돼지고기 : 외국산)</td>
        </tr>
        <tr>
          <td>치즈블라썸 스테이크 샌드</td>
          <td>	레드와인스테이크 : 쇠고기(호주산)</td>
        </tr>

      </table>
    </div>
  </div>

<!-- 알레르기 유발재료 모달 -->

  <!-- 모달 열기 버튼 -->
  <button id="modalBtn">알레르기 유발재료</button>

  <!-- 모달 컨테이너 -->
  <div id="myModal" class="modal">
    <!-- 모달 컨텐츠 -->
    <div class="modal-content">
      <!-- 모달 닫기 버튼-->
      <span class="close" id="closeBtn">&times;</span> 
      <h2 class="h2">
        알레르기 유발재료</h2>

        <p class="p">※ 알레르기 유발재료와 영양성분은 매장마다 상이할 수 있으니, 자세한 정보는 매장에 문의하시기 바랍니다.</p>
      <table border="2" class="table">
        <tr>
          <th>제품명</th>
          <th>알레르기유발재료</th>
        </tr>
        <tr>
          <th>시크릿가든</th>
          <td>대두, 우유, 밀, 계란, 닭고기</td>
        </tr>
        <tr>
          <th>더 히든 시크릿</th>
          <td>대두, 우유, 밀, 계란, 쇠고기, 돼지고기, 닭고기, 토마토</td>
        </tr>
        <tr>
          <th>치즈어셈블</th>
          <td>쇠고기, 돼지고기, 대두, 밀, 우유, 토마토</td>
        </tr>
        <tr>
          <th>딜라이트치킨볼</th>
          <td>난류, 우유, 대두, 밀, 닭고기, 토마토, 아황산류, 쇠고기, 조개류, 굴</td>
        </tr>
        <tr>
          <th>포게더</th>
          <td>난류, 우유, 대두, 밀, 새우, 오징어, 돼지고기, 쇠고기, 토마토, 아황산류, 조개류, 굴</td>
        </tr>
        <tr>
          <th>킹 브레드 쉬림프 골드 칠리</th>
          <td>우유, 밀, 토마토, 난류, 대두, 새우, 오징어</td>
        </tr>
        <tr>
          <th>킹 브레드 쉬림프 골드</th>
          <td>난류, 우유, 대두, 밀, 새우, 오징어</td>
        </tr>
        <tr>
          <th>햄벅한 새우</th>
          <td>난류, 우유, 대두, 밀, 새우, 돼지고기, 토마토, 아황산류, 쇠고기, 조개류, 굴</td>
        </tr>
        <tr>
          <th>미스터트리오</th>
          <td>난류, 우유, 대두, 밀, 새우, 돼지고기, 토마토, 아황산류, 쇠고기, 조개류, 굴</td>
        </tr>
        <tr>
          <th>치즈블라썸스테이크</th>
          <td>난류, 우유, 대두, 밀, 새우, 돼지고기, 토마토, 아황산류, 쇠고기, 조개류, 굴</td>
        </tr>
        <tr>
          <th>새우천왕</th>
          <td>난류, 우유, 대두, 밀, 새우, 돼지고기, 토마토, 아황산류, 쇠고기</td>
        </tr>
        <tr>
          <th>쉬림프 골드</th>
          <td>난류,우유,대두,밀,새우,돼지고기,토마토,쇠고기</td>
        </tr>
        <tr>
          <th>포테이토 골드</th>
          <td>난류,우유,대두,밀,돼지고기,토마토,쇠고기</td>
        </tr>
        <tr>
          <th>하프앤하프</th>
          <td>난류,우유,대두,밀,새우,돼지고기,토마토,쇠고기</td>
        </tr>
        <tr>
          <th>스윗고구마</th>
          <td>난류, 우유, 대두, 땅콩, 밀, 돼지고기</td>
        </tr>
        <tr>
          <th>베지테리안</th>
          <td>우유, 대두, 밀, 토마토</td>
        </tr>
        <tr>
          <th>하와이안스페셜</th>
          <td>난류, 우유, 대두, 밀, 돼지고기, 토마토, 굴</td>
        </tr>
        <tr>
          <th>페퍼로니 플러스</th>
          <td>우유, 대두, 밀, 돼지고기, 토마토, 쇠고기</td>
        </tr>
        <tr>
          <th>콤비네이션</th>
          <td>난류, 우유, 대두, 밀, 돼지고기, 토마토, 쇠고기</td>
        </tr>
        <tr>
          <th>포테이토</th>
          <td>난류,우유,대두,밀,돼지고기,토마토,쇠고기</td>
        </tr>
        <tr>
          <th>불고기</th>
          <td>우유, 대두, 밀, 돼지고기, 토마토, 쇠고기</td>
        </tr>
        <tr>
          <th>시카고딥</th>
          <td>난류, 우유, 대두, 밀, 돼지고기, 토마토, 쇠고기</td>
        </tr>
      
      
        

      </table>
    </div>
  </div>
</body>
<script src="js/modal.js"></script>


<!-- 하단리스트 출력 -->
<section class="py-5 bg-light">
	<div class="container px-4 px-lg-5 mt-5">
		<h2 class="fw-bolder mb-4">Related products</h2>
		<div
			class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
			<c:forEach var="product" items="${productList}">
				<div class="col mb-5">
					<div class="card h-100">
						<!-- Sale badge-->
						<div class="badge bg-dark text-white position-absolute"
							style="top: 0.5rem; right: 0.5rem">Sale</div>
						<!-- Product image-->
						<img class="card-img-top" src="images/${product.image }" alt="..." />
						<!-- Product details-->
						<div class="card-body p-4">
							<div class="text-center">
								<!-- Product name-->
								<h5 class="fw-bolder">
									<a href="productInfo.do?type=${product.prodType }&prodNo=${product.prodNo }">${product.prodName}</a>
								</h5>
								<!-- Product reviews-->
								<div
									class="d-flex justify-content-center small text-warning mb-2">
									<c:forEach begin="1" end="${product.starPoint }">
										<div class="bi-star-fill"></div>
									</c:forEach>
								</div>
								<!-- Product price-->
								<span class="text-muted text-decoration-line-through">${product.priceL }
									원</span> ${product.priceM } 원
							</div>
						</div>
						<!-- Product actions-->
						<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
							<div class="text-center">
								<a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
</section>

