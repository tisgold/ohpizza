<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

  <table class="table table-light table-striped table-hover">
<thead>
    <tr>
	  <th scope="col">#</th>
	  <th scope="col">매장이름</th>
	  <th scope="col">전화번호</th>
	  <th scope="col">주소</th>
	  <th scope="col">지점명</th>
	</tr>
  </thead>  
  <tbody>
	 <c:forEach var="store" items="${stores }" varStatus="stat">
	   <tr>
	     <th scope="row">${stat.count }</th>
	     <td>${store.strName }</td>
	     <td>${store.phone }</td>
	     <td><a href="map.jsp?lat=${store.latitude }&lng=${store.longitude }" target='_blank'>${store.address }</a></td>
	     <td>${store.locName }</td>
	   </tr>
	</c:forEach>
  </tbody>
</table>
