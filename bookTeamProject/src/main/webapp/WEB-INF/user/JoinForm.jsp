<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<!-- 
아직 header파일이 없다. 
<jsp:include page="#"/>
 -->
 
 
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 회원가입 -->

<div class="virtual-box"></div>
<div class="container">
	<div class ="row">
		<div class="offset-md-2 col-md-4">
			<div class="card">
				<div class="card-header">
					<h3>회원가입</h3>
				</div>
				<div class="card-body">
					<form action="/join" name="join" id ="joinForm" method="post">
						
						
						
						
						<table
							style="cellpadding: 0; cellspacing: 0; margin: 0 auto; width: 100%">
							<!-- auth가 business일때  -->
							<c:if test="${auth eq business}"> 
							<tr>
								<td> 
								<!-- 버튼 사업자 검증 모달창 열기 
										사업자 번호가 없는 번호라면 다시 입력하세요 알림 창! -->
								<button type="modal"></button>
													
								
								</td>
							</tr>	
							</c:if>
							<tr>
								<td style="text-align: left">
									<p><strong>아이디를 입력하세요.</strong>&nbsp;&nbsp;&nbsp;
									<span id="idChk"></span></p>
								</td>							
							</tr>
							<tr>
								<td><input type="text" name="account" id="user_id"
									class="form-control tooltipstered" maxlength="14"
									required="required" aria-required="true"
									style="margin-bottom: 25px; width: 100%; height: 40px; border: 1px solid #d9d9de"
									placeholder="숫자와 영어로 8-15자">
									</td>
								
							</tr>
			
							<tr>
								<td style="text-align: left">
									<p><strong>비밀번호를 입력하세요.</strong>&nbsp;&nbsp;&nbsp;<span id="pwChk"></span></p>
								</td>
							</tr>
							<tr>
								<td><input type="password" size="17" maxlength="20" id="password"
									name="password" class="form-control tooltipstered" 
									maxlength="20" required="required" aria-required="true"
									style="ime-mode: inactive; margin-bottom: 25px; height: 40px; border: 1px solid #d9d9de"
									placeholder="영문과 특수문자를 포함한 최소 8자"></td>
							</tr>
							<tr>
								<td style="text-align: left">
									<p><strong>비밀번호를 재확인해주세요.</strong>&nbsp;&nbsp;&nbsp;<span id="pwChk2"></span></p>
								</td>
							</tr>
							<tr>
								<td><input type="password" size="17" maxlength="20" id="password_check"
									name="pw_check" class="form-control tooltipstered" 
									maxlength="20" required="required" aria-required="true"
									style="ime-mode: inactive; margin-bottom: 25px; height: 40px; border: 1px solid #d9d9de"
									placeholder="비밀번호가 일치해야합니다."></td>
							</tr>
			
							<tr>
								<td style="text-align: left">
									<p><strong>이름을 입력해주세요.</strong>&nbsp;&nbsp;&nbsp;<span id="nameChk"></span></p>
								</td>
							</tr>
							<tr>
								<td><input type="text" name="name" id="user_name"
									class="form-control tooltipstered" maxlength="6"
									required="required" aria-required="true"
									style="margin-bottom: 25px; width: 100%; height: 40px; border: 1px solid #d9d9de"
									placeholder="한글로 최대 6자"></td>
							</tr>
							
							 
							<tr>
								<td style="text-align: left">
									<p><strong>이메일을 입력해주세요.</strong>&nbsp;&nbsp;&nbsp;<span id="emailChk"></span></p>
								</td>
							</tr>
							<tr>
								<td><input type="email" name="email" id="user_email"
									class="form-control tooltipstered" 
									required="required" aria-required="true"
									style="margin-bottom: 25px; width: 100%; height: 40px; border: 1px solid #d9d9de"
									placeholder="ex) abc@mvc.com"></td>
							</tr> 
							
			
							<tr>
								<td style="padding-top: 10px; text-align: center">
									<p><strong>회원가입하셔서 WIZONE이 되어보세요~~!</strong></p>
								</td>
							</tr>
							<tr>
								<td style="width: 100%; text-align: center; colspan: 2;">
								<input
									type="button" value="회원가입" 
									class="btn form-control tooltipstered" id="signup-btn"
									style="background: gray; margin-top: 0; height: 40px; color: white; border: 0px solid #388E3C; opacity: 0.8">
								</td>
							</tr>
			
						</table>
						
						
						
					</form>
				</div>
				<div class="card-footer" >
				
				</div>
			</div>		
		</div>	
	</div>
</div>

<!-- 
아직 footer파일이 없다. 
<jsp:include page="#"/>
<jsp:include page="#"/>
 -->
</body>
</html>