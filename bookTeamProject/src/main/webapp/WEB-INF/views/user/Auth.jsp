<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
.auth-type{
	text-align: center;
	padding: 20px 0;
}
.auth-type .type1 {
	border-top: 2px solid #5fc99b;
	margin-right: 6%;
	
}

.auth-type .type2 {
	border-top: 2px solid #60aae0;
	margin-left: 6%;
	
}

dl, dt, dd {
	padding : 0;
	margin: 0;
}

.auth-type .type1 .auth-btn a {

	background-color: #5fc99b;

}
.auth-type .type2 .auth-btn a {

	background-color: #60aae0;
	
}

.auth-type .auth-btn a {

	margin: 0 40px;
	display: block;
	padding: 8px 0;
	color: white;
	font-size: 14px;
}


</style>
<body>



<div class="auth-type">
	<div>
		<dl class="type1">
			<dt>일반 사용자 회원가입</dt>
			<dd>
			<p>
				"기업과 일반 사용자 누구나"
				<br>
				"이메일로 간단하게 가입을 진행하실 수 있습니다."
			</p>
			<div class="auth-btn">
				<a href="/JoinForm1.jsp">일반 사용자 회원가입</a>
			</div>
			</dd>	
		</dl>
	
	
		<dl class="type2">
			<dt>사업자  회원가입</dt>
			<dd>
			<p>
				"사업자는 가입시 사업자 등록번호 확인을 "
				<br>
				"진행하셔야 합니다."
			</p>
			<div class="auth-btn">
				<a href="/JoinForm2.jsp">사업자 회원가입</a>
			</div>
			</dd>	
		</dl>
	</div>


</div>













<!-- <div>
	<div class="container">
	<form action="/auth" name="authcheck" id="authForm" method="post">
		<div class="row">
		

			  <div class="col-md-6">
			  		<!-- auth 지정 : common 어떻게 넘기지. JQuery or Onclick 
					<input type="button" id="auth-common" name="auth" value="일반사용자" onclick="location='/join'">
			  </div>
			  <div class="col-md-6">
			  		<!-- auth 지정 : business
					<input type="button" id="auth-business" name="auth" value="사업자" onclick="location='/join.jsp'">
			  </div>

		</div>
	</form>
	</div>
</div>

아직 footer.jsp없다.

<script>

$(function() {
	
	const regForm = $("#authForm");

	//일반사용자 버튼 클릭 이벤트
	$('#auth-common').click(function() {
		
		
	});


	//사업자 버튼 클릭 이벤트
	$('#auth-business').click(function() {
		
		
	});
	
});

</script> -->
</body>

</html>