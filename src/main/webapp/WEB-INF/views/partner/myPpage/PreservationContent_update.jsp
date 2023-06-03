<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Pension Reservation List</title>
</head>



<body style="font-family: 'Pretendard-Regular';">

<%@ include file="../pheader.jsp" %>
   <div id="fh5co-menus" data-section="menu">
      <div class="container">
         <div class="row text-center fh5co-heading row-padded">
            <div class="col-md-8 col-md-offset-2">
               <h2 class="heading to-animate"
                  style="font-family: 'Pretendard-Regular';">Reservation List</h2>
               <p class="sub-heading to-animate"></p>
               <p style="margin-bottom: 80px"></p>
            </div>
         </div>
         <p style="margin-bottom: -30px"></p>
         <div class="container" style="width: 70%;">
         <form action="RUpdate.do?reservation_idx=${RView.reservation_idx  }" method="post">
         
            <table class="table table-bordered">
               <tr>
                  <th style="width: 200px; text-align: center;">예약번호</th>
                  <th>${RView.reservation_idx }</th>
               </tr>
              
              <tr>
                  <th style="width: 200px; text-align: center;">예약일</th>
                  <th><input id="reservation_date" name="reservation_date" type="date">&nbsp;&nbsp;기존 예약일 : <fmt:formatDate value="${RView.reservation_date }" pattern="yyyy-MM-dd"/></th>
               </tr>
             
               <tr>
                 <th style="text-align: center;">아이디</th>
                    <th>${RView.userId }</th>   
               </tr>

               <tr>
                  <th style="width: 200px; text-align: center;">예약자</th>
                  <th>${RView.userName }</th>
               </tr>
				
				<tr>
					<th style="text-align: center;">인원수</th>
					<th><input value="${RView.peopleNum }" id="peopleNum" name="peopleNum" type="number"></th>
				</tr>
					
			   <tr>
                  <th style="width: 200px; text-align: center;">이메일</th>
                  <th>${RView.userEmail }</th>
               </tr>	
					
               <tr>
                  <th style="text-align: center;">전화번호</th>
                  <th>${RView.userMobile }</th>
               </tr>

               <tr>
                  <th style="text-align: center;">펜션이름</th>
                  <td>${RView.pensionName }</td>
               </tr>
               
                <tr>
                  <th style="text-align: center;">펜션가격</th>
                  <td>${RView.price }</td>
               </tr>

               <tr>
                  <th style="width: 200px; text-align: center;">반려견 수</th>
                  <th><input value="${RView.dogNum }" id="dogNum" name="dogNum" type="number"></th>
               </tr>

               <tr>
                  <th style="text-align: center;">반려견 사이즈</th>
                  <th>
               		<p style="font-size: 16px; text-align: center;"> 
		                <input type='checkbox' name='dogSize' value='소형견' /> 소형견 (10Kg 미만)&nbsp;&nbsp;&nbsp;
		                <input type='checkbox' name='dogSize' value='중형견' /> 중형견 (10kg~25Kg 미만)&nbsp;&nbsp;&nbsp;
		                <input type='checkbox' name='dogSize' value='대형견' /> 대형견 (25Kg 이상)
		            </p>
       			</th>
               </tr>

				<tr>
                  <th style="height:200px; text-align: center;">세부내용</th>
                  <td><textarea class="message_area form-control" rows="8" cols="50" >${RView.message_to_p }</textarea></td>
               </tr>            
               
            </table>
           
            
            <div class="find-btn" style="text-align: center;">
            <input class="btn btn-primary" value="수정" type="submit" style="font-family: 'Pretendard-Regular';" >
            </div>
            </form>
            <br></br>
            

         </div>
      </div>
</div>
<%@ include file="../footer.jsp" %>

</body>

</html>