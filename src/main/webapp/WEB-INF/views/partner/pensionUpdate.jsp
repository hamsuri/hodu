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
                  <h2 class="heading to-animate"  style="font-family: 'Pretendard-Regular';">펜션 정보 수정</h2>
               </div>
            </div>
          

          <form action="pensionUpdate.do?partnerId=${sessionScope.partnerId }" method="post" id="pensionRegister">
                <div class="container" style="text-align:center;padding-left: 4px">
                
                <div class="col-md-6 col-md-offset-3">
                  <h3 style="font-family: 'Pretendard-Regular';">Hodu Pension Registration form</h3>
                  
                 <div class="form-group ">
                     <label for="pensionName" class="sr-only">pensionName</label>
                     <input id="pensionName" name="pensionName" value="${pensionView.pensionName }" class="form-control" placeholder="펜션명" type="text">
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
                     <input id="address" name="address" value="${pensionView.address }" class="form-control" placeholder="펜션 상세주소를 입력해주세요" type="text">
                  </div>
                  

                 <div class="message">
                     <textarea class="message_area form-control" rows="8" cols="50" placeholder="펜션 세부사항을 입력해주세요" name="message">${pensionView.message }</textarea>
                </div>
                <br>
	             <input class="btn btn-primary" value="수정" type="submit"  style="font-family: 'Pretendard-Regular';"/>
                  
            </div>
         </div>
 			 </form> 
			 </div> 
		 </div>
      
   
  
<%@ include file = "../footer.jsp" %>


   </body>
</html>