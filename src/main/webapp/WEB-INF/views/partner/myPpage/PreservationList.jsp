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
         <p style="margin-bottom: 0px"></p>
         <div class="container" style="width: 70%;">
            <table class="table table-hover" id="modalTable">
               <tbody style="font-family: 'Pretendard-Regular';">
               
                  <tr>
                     <th>예약번호</th>
                     <th>예약자</th>
                     <th>전화번호</th>
                     <th>이메일</th>
                     <th>펜션이름</th>
                     <th>예약일</th>
                  </tr>
               
            <c:forEach var="RList" items="${RList }"  >
						<tr id="add-btn" onclick="location.href='${path}/RView.do?reservation_idx=${RList.reservation_idx }'">
							<td data-th="Supplier Code">${RList.reservation_idx }</td>
							<td data-th="Invoice Number">${RList.userName }</td>
							<td data-th="Invoice Number">${RList.userMobile }</td>
							<td data-th="Invoice Number">${RList.userEmail }</td>
							<td data-th="Invoice Number">${RList.pensionName }</td>
							<td data-th="Invoice Date"><fmt:formatDate value="${RList.reservation_date }" pattern="yyyy-MM-dd"/></td>
						</tr>
			</c:forEach>
					
               </tbody>
            </table>
            <hr/>
            <br></br>
            

         </div>
      </div>
</div>


<%@ include file="../footer.jsp" %>






</body>

</html>