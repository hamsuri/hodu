<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>

	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
	<body>
	<%@ include file="header.jsp" %>
	<link rel="stylesheet" href="/resources/style2.css">

      <div id="fh5co-contact" data-section="reservation">
         <div class="container">
            <div class="row text-center fh5co-heading row-padded" >
            
               <div class="col-md-8 col-md-offset-2">
                  <h2 class="heading to-animate" style="font-family: 'Pretendard-Regular';">SignIn</h2>
               </div>
            </div>
         </div>   
        <div id="container">
			<div class="toggle-switch">
				<input type="checkbox" id="chbox" onchange="setDisplay()" checked>
				<label for="chbox">
					<span class="toggle-track"></span>
				</label>
			</div>
		
	   </div>
		  <form id="user" action="signin.do" name="join_form" method="post">
 
                <div class="container" style="text-align:center;padding-left: 4px">
                
                <div class="col-md-6 col-md-offset-3">
                  <h3 style="font-family: 'Pretendard-Regular';">user form</h3>
                  <div class="form-group">
                     <label for="userId" class="sr-only">UserId</label>
                     <input id="userId" name="userId" class="form-control" placeholder="회원 아이디" type="text">
                      <button id="idCheck" name="idCheck" class="btn btn-primary" type="button" onclick="fn_idCheck();" value="N" style="margin-top:20px;font-family: 'Pretendard-Regular';">중복 확인</button>
                  </div>
                   <div class="form-group ">
                     <label for="userPw" class="sr-only">userPw</label>
                     <input id="userPw" name="userPw" class="form-control" placeholder="비밀번호" type="password">
                  </div>
                  <div class="form-group ">
                     <label for="userPwRe" class="sr-only">userPwRe</label>
                     <input id="userPwRe"  class="form-control" placeholder="비밀번호 재입력" type="password">
                  </div>
                   <div class="form-group ">
                     <label for="userName" class="sr-only">userName</label>
                     <input id="userName" name="userName" class="form-control" placeholder="회원 이름" type="text">
                  </div>
                   <div class="form-group ">
                     <label for="userBirth" class="sr-only">userBirth</label>
                      <div class="form-group">
                        <p style="text-align : left; margin-bottom: 0px">생일을 입력하세요.</p>
                       </div>
                     <input id="userBirth" name="userBirth" class="form-control" placeholder="userBirth" type="date">
                  </div>
                   <div class="form-group ">
                     <label for="sex" class="sr-only">sex</label>
                    <div class="form-group">
                     <p style="text-align : left; margin-bottom: 0px">성별을 입력하세요.</p>
                     </div>
                     <div class="form-control" style="margin-bottom: 15px">   
                      <input type="radio" name="sex" value="남자" /> 남자 
                      <input type="radio" name="sex" value="여자" style="margin-left: 200px"/> 여자 
                     </div>
                   <div class="form-group ">
                     <label for="userMobile" class="sr-only">userMobile</label>
                     <input id="userMobile" name="userMobile" class="form-control" placeholder="전화번호(ex:010-1234-1234)" type="tel">
                  </div>
                   <div class="form-group ">
                     <label for="userEmail" class="sr-only">userEmail</label>
                     <input id="userEmail" name="userEmail" class="form-control" placeholder="이메일(ex:abc@abc.com)" type="email">
                  </div>             
                  <div class="form-group ">
                     <button class="btn btn-primary" type="button" onclick="join_check();" style="font-family: 'Pretendard-Regular';">회원가입</button>
                   </div>
            </div>
         </div>
         </div>
       
  </form>

	
	
	
	
	<form id="partner" action="psignin.do" name="pjoin_form" method="post">

		   		<div class="container" style="text-align:center">
		   		
			    <div class="col-md-6 col-md-offset-3">
		           <h3 style="font-family: 'Pretendard-Regular';">partner form</h3>
		            <div class="form-group">
		               <label for="partnerId" class="sr-only">partnerId</label>
		               <input id="partnerId" name="partnerId" class="form-control" placeholder="파트너 아이디" type="text">
						<button id="pidCheck" name="pidCheck" class="btn btn-primary" type="button" onclick="fn_pidCheck();" value="N" style="margin-top: 20px; font-family: 'Pretendard-Regular';" >중복 확인</button>                  
		           </div>
		            <div class="form-group ">
		              <label for="partnerPw" class="sr-only">partnerPw</label>
		              <input id="partnerPw" name="partnerPw" class="form-control" placeholder="비밀번호" type="password">
		           </div>
		           <div class="form-group ">
		              <label for="partnerPwRe" class="sr-only">partnerPwRe</label>
		              <input id="partnerPwRe"  class="form-control" placeholder="비밀번호 재 입력" type="password">
		           </div>
		            <div class="form-group ">
		              <label for="partnerName" class="sr-only">partnerName</label>
		              <input id="partnerName" name="partnerName" class="form-control" placeholder="파트너 이름" type="text">
		           </div>
		            <div class="form-group ">
		              <label for="businessNum" class="sr-only">businessNum</label>
		              <input id="businessNum" name="businessNum" class="form-control" placeholder="사업자 등록 번호" type="text">
		           </div>
		            <div class="form-group ">
		              <label for="partnerMobile" class="sr-only">partnerMobile</label>
		              <input id="partnerMobile" name="partnerMobile" class="form-control" placeholder="전화번호(ex:010-1234-1234)" type="tel">
		           </div>
		            <div class="form-group ">
		              <label for="partnerEmail" class="sr-only">partnerEmail</label>
		              <input id="partnerEmail" name="partnerEmail" class="form-control" placeholder="이메일(ex:abc@abc.com)" type="text">
		           </div>             
		           <div class="form-group ">
		              <button class="btn btn-primary" type="button" onclick="pjoin_check();" style="font-family: 'Pretendard-Regular';">회원가입</button>
		            </div>
		     </div>
		  </div>
  </form>

	
   </div>
  
<%@ include file = "footer.jsp" %>

	<script>
	$(function () {
		$("#chbox").prop("checked", true);
		setDisplay();
	 });
	
	function setDisplay() {
		if($("input:checkbox[id=chbox]").is(":checked")){
	
		$("#user").show();
		$("#partner").hide();
	} else {
		$("#user").hide();
		$("#partner").show();
	}
	}
	
	
	function fn_idCheck(){
	
		$.ajax({
			url : "/idCheck",
			type : "post",
			dataType : "json",
			contentType : "application/x-www-form-urlencoded; charset=UTF-8",
			data : {"userId" : $("#userId").val()},
			success : function(data){
				if(data == 1){
					alert("사용할 수 없는 아이디입니다.");
				}else if(data == 0){
					$("#idCheck").attr("value", "Y");
					alert("사용 가능한 아이디입니다.");
				}
			}
		})
		
		
	}
	function fn_pidCheck(){
		$.ajax({
			url : "/pidCheck",
			type : "post",
			dataType : "json",
			contentType : "application/x-www-form-urlencoded; charset=UTF-8",
			data : {"partnerId" : $("#partnerId").val()},
			success : function(data){
				if(data == 1){
					alert("사용할 수 없는 아이디입니다.");
				}else if(data == 0){
					$("#pidCheck").attr("value", "Y");
					alert("사용 가능한 아이디입니다.");
				}
			}
		})
		
		
	}		
	</script>
	<script type="text/javascript">
	
		
	</script>
	<!-- Main JS -->
	<script src="/resources/js/main.js"></script>
	<script type="text/javascript" src="/resources/js/join_check.js"></script>
	</body>
</html>
