<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>

	<head>

	</head>
	<body style="font-family: 'Pretendard-Regular';">
	<%@ include file="../pheader.jsp" %>

      <div id="fh5co-contact" data-section="reservation" >
         <div class="container">
            <div class="row text-center fh5co-heading row-padded" >
            
               <div class="col-md-8 col-md-offset-2">
                  <h2 class="heading to-animate" style="font-family: 'Pretendard-Regular';">Update form</h2>
               </div>
            </div>
          

 			<form action="editPProfile.do" method="post">
          		<div class="container" style="text-align:center;padding-left: 4px">
          		
      		    <div class="col-md-6 col-md-offset-3">
                  <h3 style="font-family: 'Pretendard-Regular';">Partner form</h3>
                  <div class="form-group">
                     <label for="partnerId" class="sr-only">partnerId</label>
                     <input id="partnerId" name="partnerId" class="form-control" value="${partner.partnerId }" type="text" readonly>
                  </div>
                   <div class="form-group ">
                     <label for="partnerPw" class="sr-only">partnerPw</label>
                     <input id="partnerPw" name="partnerPw" class="form-control" value="${partner.partnerPw }" type="password">
                  </div>
                   <div class="form-group ">
                     <label for="partnerName" class="sr-only">partnerName</label>
                     <input id="partnerName" name="partnerName" class="form-control" value="${partner.partnerName }" type="text">
                  </div>
                   <div class="form-group ">
                     <label for="businessNum" class="sr-only">BusinessNum</label>
                     <input id="businessNum" name="businessNum" value="${partner.businessNum }" class="form-control" type="text">
                  </div>
                   <div class="form-group ">
                     <label for="partnerMobile" class="sr-only">partnerMobile</label>
                     <input id="partnerMobile" name="partnerMobile" class="form-control" value="${partner.partnerMobile }" type="text">
                  </div>
                   <div class="form-group ">
                     <label for="partnerEmail" class="sr-only">partnerEmail</label>
                     <input id="partnerEmail" name="partnerEmail" class="form-control" value="${partner.partnerEmail }" type="text">
                  </div>             
                  <div class="form-group ">
                     <input class="btn btn-primary" value="수정" type="submit" style="font-family: 'Pretendard-Regular';">
                   </div>
                   
                   
            </div>
            
         </div>
         
         </form>
         <div class="container" style="text-align:center;padding-left: 4px;margin-bottom: 50px">
         		<div class="col-md-6 col-md-offset-3">
			        <div class="form-group ">
			           	<form method="post" action="uploadPProfile.do?partnerId=${partnerId }" enctype="multipart/form-data">
						     <p style="text-align: left; margin-bottom: 10px">사업자등록증</p>
						     <input type="file" name="file" class="form-control" onchange="readURL(this)" >
						     <img id="preview">
						     <input type="submit" class="btn btn-primary" style="margin-top: 15px; font-family: 'Pretendard-Regular';">
					    </form>  
			         </div>
			    </div>
		</div>
      </div>
	
  
<%@ include file = "../footer.jsp" %>

</div>

	<script>
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
