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
   	  .find-btn{
		text-align: center;
	   }
    </style>
    
   </head>
   
   <body>
    <%@ include file ="pheader.jsp" %>

      <div id="fh5co-contact" data-section="reservation">
         <div class="container">
            <div class="row text-center fh5co-heading row-padded" >
            
               <div class="col-md-8 col-md-offset-2">
                  <h2 class="heading to-animate"  style="font-family: 'Pretendard-Regular';">객실 등록</h2>
               </div>
            </div>
          

          <form method="post" action="roomUpdate.do?room_idx=${ViewRoomInfo.room_idx }">
                <div class="container" style="text-align:center;padding-left: 4px">
                
                <div class="col-md-6 col-md-offset-3">
                  <h3 style="font-family: 'Pretendard-Regular';">Hodu Pension Room Register form</h3>
                 
                  <div class="form-group">
                     <label for="roomName" class="sr-only">roomName</label>
                     <input id="roomName" name="roomName" class="form-control" value="${ViewRoomInfo.roomName }" placeholder="객실명" type="text">
                
                     <input id="pensionName" name="pensionName" value="${ViewRoomInfo.pensionName }" type="hidden">
                 
                  </div>
                 
                  <div class="form-group">
                     <label for="price" class="sr-only">Price</label>
                     <input id="price" name="price" class="form-control" value="${ViewRoomInfo.price }" placeholder="객실 가격" type="number">
                  </div>
                             
                  <div class="form-group">
                     <label for="dogNum" class="sr-only">dogNum</label>
                     <input id="dogNum" name="dogNum" class="form-control" value="${ViewRoomInfo.dogNum }" placeholder="수용 가능한 반려견 수" type="number">
                  </div>
                   
                 <div class="form-group">
               <p style="text-align : left; margin-bottom: 0px">수용 가능한 반려견 사이즈</p>
               </div>
               <div class="form-control" style="margin-bottom: 15px">
               		
               		<p style="font-size: 16px"> 
		                <input id="dogSize" name="dogSize" type='checkbox' name='check' value='소형견' /> 소형견 (10Kg 미만)&nbsp;&nbsp;&nbsp;
		                <input id="dogSize" name="dogSize" type='checkbox' name='check' value='중형견' /> 중형견 (10kg~25Kg 미만)&nbsp;&nbsp;&nbsp;
		                <input id="dogSize" name="dogSize" type='checkbox' name='check' value='대형견' /> 대형견 (25Kg 이상)
		            </p>
		        
                </div>
                   
                   <div class="form-group ">
                     <label for="peopleNum" class="sr-only">peopleNumber</label>
                     <input id="peopleNum" name="peopleNum" value="${ViewRoomInfo.peopleNum }" class="form-control" placeholder="수용 가능한 인원 수" type="number">
                  </div>
                  
                 <div class="message">
                     <textarea id="message_room" name="message_room" class="message_area form-control" rows="8" cols="50" placeholder="객실 세부사항을 입력해주세요">${ViewRoomInfo.message_room }</textarea>
                </div>

            </div>
         </div>
        
		  <p style="margin-bottom: 14px"></p>
         <div class="col-md-6 col-md-offset-3">
	         <div class="form-group " style="text-align: center;">  
	             <input class="btn btn-primary" value="제출" type="submit"  style="font-family: 'Pretendard-Regular';"/>
			 </div>
			 </div> 
		 </form>
      </div>
   
  
<%@ include file = "../footer.jsp" %>

</div>
	
   </body>
</html>