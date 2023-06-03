<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Pension List</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body style="font-family: 'Pretendard-Regular';">
   <%@ include file="pheader.jsp"%>
   <div id="fh5co-menus" data-section="menu">
      <div class="container">
         <div class="row text-center fh5co-heading row-padded">
            <div class="col-md-8 col-md-offset-2">
               <h2 class="heading to-animate" style="font-family: 'Pretendard-Regular';">My Pension</h2>
               <p class="sub-heading to-animate"></p>
               </div>
               </div>


         <div class="row row-padded">
         <c:if test="${myPension != null }">
            <div class="col-md">
               <div class="fh5co-food-menu to-animate-2">
                  <h2 class="fh5co-drinks" style="font-family: 'Pretendard-Regular';">내 펜션</h2>
                  <ul>
                     <li>
                        <div class="fh5co-food-desc">
                           <figure>
                              <img src="https://hodu.s3.ap-northeast-2.amazonaws.com//${myPension.img_pension }" class="img-responsive"
                                 alt="Free HTML5 Templates by FREEHTML5.co">
                           </figure>
                           <div>
                              <h3 style="font-family: 'Pretendard-Regular';"><a href="${path }/ViewMyRoom.do?partnerId=${myPension.partnerId }">${myPension.pensionName }</a></h3>
	                          <p>${myPension.region }</p>
                              <p>${myPension.address }</p>  
                           </div>
                        </div>
				         <div class="form-group" style="text-align: end;">
				            <button class="btn btn-primary" type="button" style="font-family: 'Pretendard-Regular';" onclick="location.href='${path }/ViewPension.do?partnerId=${sessionScope.partnerId }'">수정</button>
				         </div>
				     </li>
           
                  </ul>
               </div>
            </div>
		</c:if>
		<c:if test="${myPension == null }">
			<div class="col-md">
      	        <div class="fh5co-food-menu to-animate-2">
                  <h2 class="fh5co-drinks" style="font-family: 'Pretendard-Regular';">내 펜션</h2>
                  
                  <ul>
                     <li>
                        <div class="fh5co-food-desc">

                           <div>
                              <h3 style="font-family: 'Pretendard-Regular';"><a href="${path }/partner/register">펜션을 등록해주세요.</a></h3>

                           </div>
                        </div>

                     </li>
           
                  </ul>
               </div>
            </div>
		</c:if>
            
         </div>
        

      </div>
   </div>
   <%@ include file="footer.jsp"%>


</body>
</html>