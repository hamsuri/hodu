<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Reservation Page</title>
</head>
<body style="font-family: 'Pretendard-Regular';">
<%@ include file="header.jsp" %>
 <div id="fh5co-contact" data-section="reservation">
         <div class="container">
            <div class="row text-center fh5co-heading row-padded" >
            
               <div class="col-md-8 col-md-offset-2">
                  <h2 class="heading to-animate"  style="font-family: 'Pretendard-Regular';">예약하기</h2>
               </div>
            </div>
                <div class="container" style="text-align:center;padding-left: 4px">
                <form id="reservation" action="${path }/RInsert.do?pensionName=${param.pensionName }">
                <div class="col-md-6 col-md-offset-3">
                  <h3 style="font-family: 'Pretendard-Regular';">Reservation</h3>
                  <div class="form-group ">
                     <label for="reservation_date" class="sr-only">reservation_date</label>
                     <input id="reservation_date" name="reservation_date" class="form-control" placeholder="예약 날짜" type="date">
                  </div>   
                  <div class="form-group ">
                     <label for="userId" class="sr-only">userID</label>
                     <input id="userId" name="userId" class="form-control" value="${sessionScope.userId }" placeholder="아이디" type="hidden">
                  </div>
                 	<div class="area" style="margin-bottom: 15px"> 
							<select id="area" class="form-control" name="roomName">
								<option selected disabled>객실을 선택하세요.</option>
								<c:forEach var="RoomSelect" items="${RoomSelect }">
								<option value="${RoomSelect }">${RoomSelect }</option>
								</c:forEach>
							</select>
							<div id="areaError" class="error"></div>
						</div>
                  <div class="form-group ">
                     <label for="userName" class="sr-only">userName</label>
                     <input id="userName" name="userName"  class="form-control" placeholder="이름" type="text">
                  </div>
                  <div class="form-group ">
                     <label for="userMobile" class="sr-only">userMobile</label>
                     <input id="userMobile" name="userMobile"  class="form-control" placeholder="핸드폰 번호" type="text">
                  </div>
                  <div class="form-group ">
                     <label for="userEmail" class="sr-only">userEmail</label>
                     <input id="userEmail" name="userEmail" class="form-control" placeholder="이메일" type="text">
                  </div>
                  <div class="form-group ">
                     <input id="pensionName" name="pensionName" value="${param.pensionName }"  class="form-control" placeholder="펜션이름" type="hidden">
          
                  </div>
                   
                    <div class="form-group">
                     <p style="text-align : left; margin-bottom: 0px">반려견 사이즈</p>
                   </div>
                  <div class="form-control" style="margin-bottom: 15px">   
                   <p style="font-size: 16px"> 
                      <input type='checkbox' name='dogSize' value='소형견' /> 소형견 (10Kg 미만)&nbsp;&nbsp;&nbsp;
                      <input type='checkbox' name='dogSize' value='중형견' /> 중형견 (10kg~25Kg 미만)&nbsp;&nbsp;&nbsp;
                      <input type='checkbox' name='dogSize' value='대형견' /> 대형견 (25Kg 이상)
                   </p>
                </div>       
                  <div class="form-group ">
                     <label for="dogNum" class="sr-only">dogNum</label>
                     <input id="dogNum" name="dogNum" class="form-control" placeholder="강아지 수" type="number">
                  </div>
                  <div class="form-group ">
                     <label for="peopleNum" class="sr-only">peopleNum</label>
                     <input id="peopleNum" name="peopleNum" class="form-control" placeholder="인원" type="text">
                  </div>
            	   <div class="message">
                     <textarea class="message_area form-control" name="message_to_p" rows="8" cols="50" placeholder="펜션에 미리 전달한 사항을 작성해 주세요"></textarea>
                   </div>               
                   <div class="form-group ">
                     <button id="reservationBtn" class="btn btn-primary" type="button" style="font-family: 'Pretendard-Regular';">제출</button>
                   </div>   
            </div>
            </form>
         </div>
      </div>
   </div>
<%@ include file="footer.jsp" %>

<script>
$(document).ready(function(){
	$("#reservationBtn").click(function(){
		var reservation_date = $("#reservation_date").val();
		var room = document.getElementById("area");
		var room_option = room.options[room.selectedIndex].text;
		var userName = $("#userName").val();
		var userMobile = $("#userMobile").val();
		var dogSize = $("input[name=dogSize]:checkbox:checked").length;
		var dogNum = $("#dogNum").val();
		var peopleNum = $("#peopleNum").val();
		
		if(reservation_date == ""){
			alert("예약날짜를 입력하세요.");
			reservation_date.focus();
	 	} else if(room_option == "객실을 선택하세요."){
			alert("객실을 선택하세요.");
			room_option.focus();
		} else if(userName == ""){
			alert("이름을 입력하세요.");
			userName.focus();
		} else if(userMobile == ""){
			alert("전화번호를 입력하세요.");
			userMobile.focus();
		} else if(dogSize < 1){
			alert("반려견 사이즈를 선택하세요.");
			return false;
		} else if(dogNum == ""){
			alert("반려견 수를 입력하세요");
			dogNum.focus();
		} else if(peopleNum == ""){
			alert("방문자 수를 입력하세요");
			peopleNum.focus();
		}
		document.getElementById('reservation').submit();
	});
	
});

</script>


</body>
</html>