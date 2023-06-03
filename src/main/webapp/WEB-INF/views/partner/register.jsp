<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>

  <head>

    <style>
    
      textarea {
        width: 100%;
        height: 100px;
      } 
      .area select {
   		width: 100%;
   	    height: 55px;
   	  }
    </style>

   </head>
   
   <body style="font-family: 'Pretendard-Regular';">
    <%@ include file ="pheader.jsp" %>

      <div id="fh5co-contact" data-section="reservation">
         <div class="container">
            <div class="row text-center fh5co-heading row-padded" >
            
               <div class="col-md-8 col-md-offset-2">
                  <h2 class="heading to-animate"  style="font-family: 'Pretendard-Regular';">펜션 등록</h2>
               </div>
            </div>
          

          <form action="${path }/pensionRegister.do" method="post" id="pensionRegister" enctype="multipart/form-data">
                <div class="container" style="text-align:center;padding-left: 4px">
                
                <div class="col-md-6 col-md-offset-3">
                  <h3 style="font-family: 'Pretendard-Regular';">Hodu Pension Registration form</h3>
                  
                 <div class="form-group ">
                     <label for="pensionName" class="sr-only">pensionName</label>
                     <input id="pensionName" name="pensionName" class="form-control" placeholder="펜션명" type="text">
                     <input id="partnerId" name="partnerId" class="form-control" value="${sessionScope.partnerId }"type="hidden">
                  </div>

						<div class="area"> 
							<select id="area" class="form-control" name="region">
								<option selected disabled>지역을 선택하세요.</option>
								<option value="경기">경기</option>
								<option value="충남">충남</option>
								<option value="충북">충북</option>
								<option value="전남">전남</option>
								<option value="전북">전북</option>
								<option value="경남">경남</option>
								<option value="경북">경북</option>
								<option value="강원">강원</option>
								<option value="제주">제주</option>
							</select>
							<div id="areaError" class="error"></div>
						</div>

						<p style="margin-bottom: 17px"></p>

						<div class="form-group ">
                     <label for="address" class="sr-only">address</label>
                     <input id="address" name="address" class="form-control" placeholder="펜션 상세주소를 입력해주세요" type="text">
                  </div>
                  
                  <div class="form-group ">
                     <label for="mobile" class="sr-only">partnerMobile</label>
                     <input id="mobile" name="mobile" class="form-control" placeholder="전화번호(ex:010-1234-1234)" type="tel">
                  </div>
                 <div class="message">
                     <textarea class="message_area form-control" rows="8" cols="50" placeholder="펜션 세부사항을 입력해주세요" name="message"></textarea>
                </div>
                  
            </div>
         </div>
         
         <p style="margin-bottom: 14px"></p>
         <div class="col-md-6 col-md-offset-3">
	         <div class="form-group ">  
	         
				 <p style="text-align: left; margin-bottom: 10px"> 펜션 사진 업로드</p>
			     <p style="width: 102%">
				     <input id="img_pension" type="file" name="file" multiple="multiple" class="form-control" onchange="readURL(this)">
				     <img id="preview">
		            </p>
			 
			  <input id="pensionSubmit" class="btn btn-primary" value="다음" type="button" style="font-family: 'Pretendard-Regular'; 
	             margin-top: 15px; margin-left: 240px;margin-right: 240px">
			 </div> 
		 </div>
		 </form>
      </div>

   
  
<%@ include file = "../footer.jsp" %>

</div>
	<script>
	$(document).ready(function(){
		$("#pensionSubmit").click(function(){
			var pensionName = $("#pensionName").val();
			var region = document.getElementById("area");
			var region_option = region.options[region.selectedIndex].text;
			var address = $("#address").val();
			var mobile = $("#mobile").val();
			var img_pension = $("#img_pension").val();
			
			if(pensionName == ""){
				alert("펜션명을 입력하세요.");
				pensionName.focus();
		 	} else if(region_option == "지역을 선택하세요."){
				alert("지역을 입력하세요.");
				region_option.focus();
			} else if(address == ""){
				alert("상세 주소를 입력하세요.");
				address.focus();
			} else if(mobile == ""){
				alert("전화번호를 입력하세요.");
				mobile.focus();
			} else if(img_pension == ""){
				alert("펜션 이미지를 등록하세요.");
				img_pension.focus();
			}
			document.getElementById('pensionRegister').submit();
		});
		
	});
	

	
	function readURL(input) {
		if (input.files && input.files[0]) {
		  var reader = new FileReader();
		  reader.onload = function(e) {
		    document.getElementById('preview').src = e.target.result;
		    document.getElementById('preview').style.height='300px';
		    document.getElementById('preview').style.height='300px';
		  };
		  reader.readAsDataURL(input.files[0]);
		} else {
		  document.getElementById('preview').src = "";
		}
	}
	
	</script>

   </body>
</html>