<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<style>
.virtual-box {
	margin-bottom: 120px;
}
</style>

</head>
<body>

<!-- 일반 사용자 정보수정 폼 -->
<c:if test="${loginUser.auth eq 'common'">




</c:if>




<!-- 사업자 정보수정 폼 -->

<c:if test="${loginUser.auth eq 'business'">




</c:if>


	

</body>
</html>