<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>

<meta charset="UTF-8">
<title>Insert title here</title>


</head>
<body>

<table>
		<tr>
			<td> 방번호</td><td> 제목</td>
		</tr>
		<c:forEach var="propertylist" items="${propertylist}">
	
	
		<tr>
			<td> ${propertylist.property_id }</td>
			<form name="listForm" action="./${propertylist.property_id }">
			<input type="hidden" name="search_option" id="search_option" value="${svo.search_option }">
<input type="hidden" name="search_category" id="search_category" value="${svo.search_category }">
<input type="hidden" name="search_type" id="search_type" value="${svo.search_type }">
<input type="hidden" name="search_city" id="search_city" value="${svo.search_city }">
<input type="hidden" name="search_gu" id="search_gu" value="${svo.search_gu }">
<input type="hidden" name="search_min_price" id="search_min_price" value="${svo.search_min_price }">
<input type="hidden" name="search_max_price" id="search_max_price" value="${svo.search_max_price }">
<input type="hidden" name="search_min_price2" id="search_min_price" value="${svo.search_min_price2 }">
<input type="hidden" name="search_max_price2" id="search_max_price" value="${svo.search_max_price2 }">
<input type="hidden" name="search_min_deposit" id="search_min_deposit" value="${svo.search_min_deposit }">
<input type="hidden" name="search_max_deposit" id="search_max_deposit" value="${svo.search_max_deposit }">
<input type="hidden" name="search_min_size" id="search_min_size" value="${svo.search_min_size }">
<input type="hidden" name="search_max_size" id="search_max_size" value="${svo.search_max_size }">
<input type="hidden" name="search_min_bedroom" id="search_min_bedroom" value="${svo.search_min_bedroom }">
<input type="hidden" name="search_max_bedroom" id="search_max_bedroom" value="${svo.search_max_bedroom }">
			<td>
			<button type="submit">눌려라</button>
			${propertylist.property_title }</td>
			</form>
		</tr>
	
		</c:forEach>
</table>


</body>
</html>