<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>




<link href="css/cartList.css" rel="stylesheet">
<body>
    <section class="cart">
        <div class="cartinformation">
            <ul>
                <li>장바구니 상품은 최대 30일간 저장됩니다.</li>
                <li>가격, 옵션 등 정보가 변경된 경우 주문이 불가할 수 있습니다.</li>
                <li>오늘출발 상품은 판매자 설정 시점에 따라 오늘출발 여부가 변경될 수 있으니 주문 시 꼭 다시 확인해 주시기
                    바랍니다.</li>
            </ul>
        </div>
        <table class="cartlist" action="cartDelete.do">
            <tr>
                <th><input type="checkbox"></th>
                <th>제품명</th>
                <th>가격</th>
                <th>개수</th>
                <th>총가격</th>
            </tr>
            <c:forEach var="cart" items="${cartList }">
                <tr class="cartlistdetail">
                    <td><input type="checkbox"></td>
                    <td><img src="image/${cart.prodName }.jpg" alt="pizza">
                    <td><a href="#">${cart.prodName }</a><span
                        class="cartlistsmartstore">pizza</span>
                        <p>${cart.prodName }</p> <span class="price">${cart.prodPrice }</span><span
                        ${cart.prodPrice }></span></td>
                    <td>${cart.prodPrice }</td>
                    <td>${cart.count }</td>
                    <td>${cart.count*cart.prodPrice }</td>
                    <td>
                        <form action="cartDelete.do">
                            <input type=hidden name=id value='${logId }'> <input
                                type=hidden name=listNo value='${cart.listNo }'>
                            <button type="submit">삭제</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </table>

        <h1>총 가격: ${aPrice }</h1>
        <form>
            <button type=submit>결제하기</button>
        </form>

    </section>
</body>