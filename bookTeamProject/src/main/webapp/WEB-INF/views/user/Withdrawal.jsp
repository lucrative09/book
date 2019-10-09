<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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



<!-- 
<jsp:include page="../include/header.jsp" />
 -->

<!-- 회원탈퇴 양식 -->

<div class="virtual-box"></div>
<div class="container">
	<div class="row">
		<div class="offset-md-2 col-md-4">
			<div class="card" style="width:200%;">
				<div class="card-header text-white" style="background: #dedefc;">
					<h2><span style="color: gray;"></span>회원탈퇴</h2>					
				</div>
				<div class="card-body">
					<form action="/withdrawalCheck" name="withdrawal" method="post" id="withdrawalForm"
					style="margin-bottom: 0;">
					<table style="cellpadding: 0; cellspacing: 0; margin: 0 auto; width: 100%">
						<tr>
							<td style="text-align: left">
								<p><strong>이메일을 입력해주세요.</strong>&nbsp;&nbsp;&nbsp;<span id="EmailCheck"></span></p>
							</td>
						</tr>
						<tr>
							<td><input type="text" name="email" id="withdrawalEmail"
								class="form-control tooltipstered" maxlength="10"
								required="required" aria-required="true"
								style="margin-bottom: 25px; width: 100%; height: 40px; border: 1px solid #d9d9de">
							</td>
						</tr>
						<tr>
							<td style="text-align: left">
								<p><strong>비밀번호를 입력해주세요.</strong>&nbsp;&nbsp;&nbsp;<span id="pwCheck"></span></p>
							</td>
						</tr>
						<tr>
							<td><input type="password" size="17" maxlength="20" id="withdrawalPw"
								name="password" class="form-control tooltipstered" 
								maxlength="20" required="required" aria-required="true"
								style="ime-mode: inactive; margin-bottom: 25px; height: 40px; border: 1px solid #d9d9de"></td>
						</tr>
						
						
						<tr>
							<td style="width: 100%; text-align: center; colspan: 2;">
							<input
								type="submit" value="회원탈퇴" class="btn form-control tooltipstered" id="delete-btn"
								style="background-color: #343A40; margin-top: 0; height: 40px; color: white; border: 0px solid #7084cc; opacity: 0.8">
							</td>
						</tr>
						
					</table>
				</form>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- 
<jsp:include page="../include/footer.jsp" />
<jsp:include page="../include/plugin-js.jsp" />
 -->
 <script>
	const data = "${loginResult}";
	if(data === "emailFail") {
		alert("존재하는 회원이 아닙니다. ");
		history.back(); 
	} else if(data === "pwFail") {
		alert("비밀번호를 확인해주세요.");
		history.back();
	} else {
		alert("회원 탈퇴되었습니다.");
	}
</script>




</body>
</html>