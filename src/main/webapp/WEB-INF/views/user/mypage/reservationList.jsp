<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Pension Reservation List</title>
</head>
<body >
<%@ include file="../header.jsp" %>
<div id="fh5co-menus" data-section="menu">
         <div class="container">
            <div class="row text-center fh5co-heading row-padded">
               <div class="col-md-8 col-md-offset-2">
                  <h2 class="heading to-animate" style="font-family: 'Pretendard-Regular';">나의 예약 목록</h2>
                  <p class="sub-heading to-animate" style="font-family: 'Pretendard-Regular';">예약 취소 시 수수료가 발생할 수 있습니다.</p>
               </div>
            </div>
            <div class="row row-padded">
               <div class="col-md">
                  <div class="fh5co-food-menu to-animate-2">
                     <h2 class="fh5co-drinks" style="font-family: 'Pretendard-Regular';">Reservation</h2>
                     <ul>
                        <li>
                       		<c:forEach var="Reservation" items="${ReservationList }">  
                           		<div class="fh5co-food-desc">     
                           			<input type="hidden" name="reservation_idx" id="reservation_idx" value="${Reservation.reservation_idx }"> 
									<div>
		                                 <h3 style="font-family: 'Pretendard-Regular';">${Reservation.pensionName }</h3>
		                                 <p style="font-family: 'Pretendard-Regular';"><fmt:formatDate value="${Reservation.reservation_date }" pattern="yyyy-MM-dd"/></p>
		                             </div>
                          		 </div>    
		                           <div class="fh5co-food-pricing" style="font-family: 'Pretendard-Regular';">
		                              <fmt:formatNumber value="${Reservation.price}" pattern="###,###"/> 원
		                           </div>       
		              				<div class="fh5co-food-pricing" >
					  					<button class="btn btn-primary me-md-2" type="button" onclick="location.href='UserRView.do?reservation_idx=${Reservation.reservation_idx}'" style="font-family: 'Pretendard-Regular';">수정</button>
					 					<button class="btn btn-primary" type="button" onclick="call_confirm(${Reservation.reservation_idx});" style="font-family: 'Pretendard-Regular';">취소</button>
					 				</div>  
			 				</c:forEach>                                      
					  </li>
					 </ul>
				</div>
			</div>
		</div>
		
	</div>
</div>
<script type="text/javascript">
	function call_confirm(idx){
		
	
	if(confirm("예약을 취소하시겠습니까?")){
		location.href="${path }/deleteReservation.do?reservation_idx="+idx;
		alert("정상적으로 처리되었습니다.");9
	}else{
		alert("취소되었습니다.");
	}	
}
	</script>
</body>
</html>