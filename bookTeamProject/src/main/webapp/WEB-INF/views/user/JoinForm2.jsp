<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<!-- 
<jsp:include page="../include/static-head.jsp" />

 -->
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

<!-- 회원가입 양식 -->

<div class="virtual-box"></div>
<div class="container">
	<div class="row">
		<div class="offset-md-2 col-md-4">
			<div class="card" style="width:200%;">
				<div class="card-header text-white" style="background: #9fd6ba;">
					<h2><span style="color: gray;"/>회원가입</h2>
				</div>
				<div class="card-body">
					<form action="/join" name="signup" id="signUpForm" method="post"
						style="margin-bottom: 0;">


						<!-- 7. auth  -->
						<input type="hidden" name="auth" value="business">
						
						<table
							style="cellpadding: 0; cellspacing: 0; margin: 0 auto; width: 100%">
							

							<!-- 1.이메일 -->
							 
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
									placeholder="ex) book@page.com"></td>
							</tr> 
							
							<!-- 2.패스워드 -->
							
							<tr>
								<td style="text-align: left">
									<p><strong>비밀번호를 입력해주세요.</strong>&nbsp;&nbsp;&nbsp;<span id="pwChk"></span></p>
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
							
														
							<!-- 3. 닉네임 -->
							
							
							
							<tr>
								<td style="text-align: left">
									<p><strong>닉네임을 입력해주세요.</strong>&nbsp;&nbsp;&nbsp;<span id="nameChk"></span></p>
								</td>
							</tr>
							<tr>
								<td><input type="text" name="nickname" id="user_name"
									class="form-control tooltipstered" maxlength="13"
									required="required" aria-required="true"
									style="margin-bottom: 25px; width: 100%; height: 40px; border: 1px solid #d9d9de"
									placeholder="한글로 최대 13자"></td>
							</tr>
							
							<!-- 4. 휴대폰 번호 -->
							
							<tr>
								<td style="text-align: left">
									<p><strong>휴대폰 번호를 입력해주세요.</strong>&nbsp;&nbsp;&nbsp;
									<span id="phoneNumChk"></span></p>
								</td>							
							</tr>
							<tr>
								<td><input type="text" name="phoneNumber" id="user_phoneNum"
									class="form-control tooltipstered" maxlength="13"
									required="required" aria-required="true"
									style="margin-bottom: 25px; width: 100%; height: 40px; border: 1px solid #d9d9de"
									placeholder="010-1234-5678">
								</td>
								
							</tr>
							
							<!-- 5. 은행선택 리스트 -->
							<tr>
								<td style="text-align: left">
									<p><strong>사용 은행을 선택해주세요.</strong>&nbsp;&nbsp;&nbsp;
									<span id="bankAccountChk"></span></p>
								</td>
								<td><select name="bank" id="user_bank">
								        <option value=1 selected>국민은행</option>
								        <option value=2>신한은행</option>
								        <option value=3>우리은행</option>
								        <option value=4>기업은행</option>
								        <option value=5>농협</option>
								        <option value=6>새마을금고</option>
								    </select>							
								
								</td>
							</tr>
							
							
							
							<!-- 6. 계좌입력  -->
							<tr>
								<td style="text-align: left">
									<p><strong>'-'없이 계좌번호를 입력해주세요.</strong>&nbsp;&nbsp;&nbsp;
									<span id="bankAccountChk"></span></p>
								</td>							
							</tr>
							<tr>
								<td><input type="text" name="bankAccount" id="user_bankAccount"
									class="form-control tooltipstered" maxlength="13"
									required="required" aria-required="true"
									style="margin-bottom: 25px; width: 100%; height: 40px; border: 1px solid #d9d9de"
									placeholder="110123456789">
									</td>								
							</tr>
							
							
							
							
							<!-- 7. 사업자 검증 - 사업자 등록번호, 건물명  -->
							
							<tr>
								<td style="text-align: left">
									<p><strong>사업자 등록번호를 입력해주세요.</strong>&nbsp;&nbsp;&nbsp;
									<span id="businessChk"></span></p>
								</td>							
							</tr>
							<tr>
								<td><input type="text" name="businessNum" id="business_num"
									class="form-control tooltipstered" maxlength="12"
									required="required" aria-required="true"
									style="margin-bottom: 25px; width: 100%; height: 40px; border: 1px solid #d9d9de"
									placeholder="111-22-33333">
								</td>
							</tr>
							<tr>
								<td style="text-align: left">
									<p><strong>사업지의 주소을 입력해주세요.</strong>&nbsp;&nbsp;&nbsp;
									<span id="buildingAddressChk"></span></p>
								</td>							
							</tr>
							<tr>
								<td><input type="text" name="buildingAddress" id="business_address"
								class="form-control tooltipstered" maxlength="100"
								required="required" aria-required="true"
								style="margin-bottom: 25px; width: 100%; height: 40px; border: 1px solid #d9d9de"
								placeholder="~~시 ~~구 ~~로  ~~, ~~~동 ~~~호">
								</td>
								
							</tr>
			

			

							
			
			
							<!-- 회원가입 버튼 -->
							
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
			</div>
		</div>
	</div>
</div>

<!-- 

<jsp:include page="../include/footer.jsp" />
<jsp:include page="../include/plugin-js.jsp" />

 -->


<script>
//start JQuery
$(function() {
	
	//입력값 검증 정규표현식
	const getPwCheck= RegExp(/([a-zA-Z0-9].*[!,@,#,$,%,^,&,*,?,_,~])|([!,@,#,$,%,^,&,*,?,_,~].*[a-zA-Z0-9])/);
	const getName= RegExp(/^[가-힣]+$/);
	const getMail = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);
	const getPhoneNum = RegExp(/^[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}$/);
	const getBank = RegExp(/^[0-9]+$/);
	const getBusiness = RegExp(/^[0-9]{3}-[0-9]{2}-[0-9]{5}$/);
	const getAddress = RegExp(		);
	
	//입력값 검증을 마칠 경우 true로 설정 
	//(chk1 : 이메일검증, chk2 : 비밀번호, chk3: 비번확인란, chk4: 닉네임, chk5: 핸드폰 번호, chk6: 계좌번호, chk7: 사업자검증, chk8 = 주소지 검증 )
	let chk1 = false, chk2 = false, chk3 = false, chk4 = false, chk5 = false, chk6 = false, chk7 = false, chk8 = false;
	
	//회원가입 form DOM객체 저장.
	const regForm = $("#signUpForm");
	
	
	
	
	
	//회원가입 검증~~
	
	//이메일 입력값 검증.
	$('#user_email').on('keyup', function() {
		//이메일값 공백 확인
		if($("#user_email").val() == ""){
		    $('#user_email').css("background-color", "blue");
			$('#emailChk').html('<b style="font-size:16px;color:red;">[이메일을 입력해주세요.]</b>');
			chk1 = false;
		}		         
		//이메일값 유효성검사
		else if(!getMail.test($("#user_email").val())){
		    $('#user_email').css("background-color", "blue");
			$('#emailChk').html('<b style="font-size:16px;color:red;">[이메일 형식을 확인해주세요.]</b>');
			chk1 = false;
		} else {
			
			//이메일 중복확인 비동기 통신
			const email = $(this).val();
			
			$.getJSON("/check?kind=email&info="+email, result => {
				if(!result) {
					$("#user_email").css("background-color", "aqua");
					$("#emailChk").html("<b style='font-size:14px; color:green;'>[사용가능한 이메일입니다.]</b>");						
					chk1 = true;
				} else {
					$("#user_email").css("background-color", "blue");
					$("#emailChk").html("<b style='font-size:14px; color:red;'>[중복된 이메일입니다.]</b>");						
					chk1 = false;
				}
			});		
		}
		
	});
	
	
	
	
	//패스워드 입력값 검증.
	$('#password').on('keyup', function() {
		//비밀번호 공백 확인
		if($("#password").val() === ""){
		    $('#password').css("background-color", "pink");
			$('#pwChk').html('<b style="font-size:14px;color:red;">[비밀번호를 입력해주세요.]</b>');
			chk2 = false;
		}		         
		//비밀번호 유효성검사
		else if(!getPwCheck.test($("#password").val()) || $("#password").val().length < 8){
		    $('#password').css("background-color", "pink");
			$('#pwChk').html('<b style="font-size:14px;color:red;">[특수문자 포함 8자이상 입력해주세요.]</b>');
			chk2 = false;
		} else {
			$('#password').css("background-color", "aqua");
			chk2 = true;
		}
		
	});
	
	//패스워드 확인란 입력값 검증.
	$('#password_check').on('keyup', function() {
		//비밀번호 확인란 공백 확인
		if($("#password_check").val() === ""){
		    $('#password_check').css("background-color", "blue");
			$('#pwChk2').html('<b style="font-size:14px;color:red;">[비밀번호를 확인해주세요.]</b>');
			chk3 = false;
		}		         
		//비밀번호 확인란 유효성검사
		else if($("#password").val() != $("#password_check").val()){
		    $('#password_check').css("background-color", "blue");
			$('#pwChk2').html('<b style="font-size:14px;color:red;">[비밀번호가 일치하지 않습니다.]</b>');
			chk3 = false;
		} else {
			$('#password_check').css("background-color", "aqua");
			$('#pwChk2').html('<b style="font-size:14px;color:green;">[일치]</b>');
			chk3 = true;
		}
		
	});
	
	//닉네임 입력값 검증.
	$('#user_name').on('keyup', function() {
		//닉네임 공백 확인
		if($("#user_name").val() === ""){
		    $('#user_name').css("background-color", "blue");
			$('#nameChk').html('<b style="font-size:14px;color:red;">[닉네임을 입력해주세요.]</b>');
			chk3= false;
		}		         
		//닉네임 유효성검사
		else if(!getName.test($("#user_name").val())){
		    $('#user_name').css("background-color", "blue");
			$('#nameChk').html('<b style="font-size:14px;color:red;">[닉네임은 한글로 입력해주세요.]</b>');
			chk4 = false;
		} 
		//닉네임 중복확인 비동기 처리
		else {
			//닉네임 중복확인 비동기 통신
			const nickname = $(this).val();
			console.log(nickname);
			
			$.getJSON("/check?kind=nickname&info="+nickname, result => {
				console.log(result);
				if(!result) {
					$("#user_name").css("background", "aqua");
					$("#nameChk").html("<b style='font-size:14px; color:green;'>[사용가능한 닉네임입니다.]</b>");						
					chk4 = true;
				} else {
					$("#user_name").css("background", "blue");
					$("#nameChk").html("<b style='font-size:14px; color:red;'>[사용할 수 없는 닉네임입니다.]</b>");						
					chk4 = false;
				}
			});			
			
		}
		
	});
	
	//핸드폰 번호 검증
	
	$('#user_phoneNum').on('keyup', function() {
		//휴대폰 번호 공백 확인
		if($("#user_phoneNum").val() == ""){
		    $('#user_phoneNum').css("background-color", "blue");
			$('#phoneNumChk').html('<b style="font-size:16px;color:red;">[휴대폰 번호를 입력해주세요.]</b>');
			chk5 = false;
		} else {
			
			const phone = $(this).val();
			
			$.getJSON("/check?kind=phoneNumber&info="+phone, result => {
				if(!result) {
					$("#user_phoneNum").css("background-color", "aqua");
					$("#phoneNumChk").html("<b style='font-size:14px; color:green;'></b>");						
					chk5 = true;
				} else {
					$("#user_phoneNum").css("background-color", "blue");
					$("#phoneNumChk").html("<b style='font-size:14px; color:red;'>[휴대폰 번호를 확인해주세요]</b>");						
					chk5 = false;
				}
			});		
		}
		
	});
	

	
	//chk6: 계좌번호 -> 계좌 실명인증 api 쓰면 필요없을 듯. 
	$('#user_phoneNum').on('keyup', function() {
		
		if($("#user_phoneNum").val() == ""){
		    $('#user_phoneNum').css("background-color", "blue");
			$('#phoneNumChk').html('<b style="font-size:16px;color:red;">[휴대폰 번호를 입력해주세요.]</b>');
			chk6 = false;
		} else {
			
			const account = $(this).val();
			
			$.getJSON("/check?kind=bankAccount&info="+account, result => {
				if(!result) {
					$("#user_bankAccount").css("background-color", "aqua");
					$("#bankAccountChk").html("<b style='font-size:14px; color:green;'></b>");						
					chk6 = true;
				} else {
					$("#user_bankAccount").css("background-color", "blue");
					$("#bankAccountChk").html("<b style='font-size:14px; color:red;'>[휴대폰 번호를 확인해주세요.]</b>");						
					chk6 = false;
				}
			});		
		}
		
	});
	
	
	
	
	
	
	
	//chk7: 사업자 번호 검증
	$('#business_num').on('keyup', function() {
		if($("#business_num").val() === ""){
			$('#business_num').css("background-color", "green");
			$('#businessChk').html('<b style="font-size:14px;color:red;">[사업자 등록번호를 입력해주세요.]</b>');
			chk7 = false;
		}
		
		//사업자 번호 유효성검사
		else if(!getBusiness.test($("#business_num").val())){
			$('#business_num').css("background-color", "green");
			$('#businessChk').html('<b style="font-size:14px;color:red;">[등록번호 양식을 지켜주세요.]</b>');	  
			chk7 = false;
		} 
		//사업자번호  중복확인 비동기 처리
		else {
			//사업자 번호 중복확인 비동기 통신
			const bnum = $(this).val();
			console.log(id);
			
			$.getJSON("/check?kind=businessNum&info="+bnum, result => {
				console.log(result);
				if(!result) {
					$("#business_num").css("background", "aqua");					
					chk7 = true;
				} else {
					$("#business_num").css("background", "pink");
					$("#businessChk").html("<b style='font-size:14px; color:red;'>[사용자 번호를 확인해주세요.]</b>");						
					chk7 = false;
				}
			});			
			
		}
	});
	
	
	//chk8: 사업자 주소지 검증 -> 도로명 주소 api 쓰면 필요없을 듯
	$('#business_address').on('keyup', function() {
		if($("#business_address").val() === ""){
			$('#business_address').css("background-color", "green");
			$('#buildingAddressChk').html('<b style="font-size:14px;color:red;">[사업자 주소지를 입력해주세요.]</b>');
			chk8 = false;
		}
		else if(!getAddress.test($("#business_address").val())){
			$('#business_address').css("background-color", "green");  
			chk8 = false;
		} 
	
		else {

			const badd = $(this).val();
			console.log(id);
			
			$.getJSON("/check?kind=buildingAddress&info="+badd, result => {
				console.log(result);
				if(!result) {
					$("#business_address").css("background", "aqua");
					$("#buildingAddressChk").html("<b style='font-size:14px; color:green;'>[]</b>");						
					chk8 = true;
				} else {
					$("#business_address").css("background", "green");
					$("#buildingAddressChk").html("<b style='font-size:14px; color:red;'>[이미 등록된 주소지입니다. ]</b>");						
					chk8 = false;
				}
			});			
			
		}
		

	});
	
	
	
	
	
	
	//회원가입 버튼 클릭 이벤트
	$('#signup-btn').click(function() {
		if(chk1 && chk2 && chk3 && chk4 && chk5 && chk6 && chk7 && chk8) {
			regForm.submit(); //서버로 폼전송
		} else {
			alert("입력정보를 다시 확인하세요!");
		}
	});
	
	
	

	
	
});//end JQuery

</script>


<script>
const regResult = "${regResult}";
if (regResult === "OK") {
	alert("회원가입이 성공했습니다. 로그인해주세요.");
}
</script>

</body>
</html>