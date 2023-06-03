<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>User Review Page</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body style="font-family: 'Pretendard-Regular';">
   <%@ include file="header.jsp"%>
   <div id="fh5co-menus" data-section="menu">
      <div class="container">
         <div class="row text-center fh5co-heading row-padded">
            <div class="col-md-8 col-md-offset-2">
               <h2 class="heading to-animate" style="font-family: 'Pretendard-Regular';">Review List</h2>
               <p class="sub-heading to-animate"></p>
               </div>
               </div>

  
	<c:if test="${sessionScope.userId != null }">
	<a  href="${path }/user/review?pensionName=${param.pensionName}" class="btn btn-default pull-right" style="font-family: 'Pretendard-Regular'; font-size: 15px;">후기작성</a>
	</c:if>
         <div class="row row-padded">
         
            <div class="col-md" id="like">
               <div class="fh5co-food-menu to-animate-2">
                  <h2 class="fh5co-drinks" style="font-family: 'Pretendard-Regular';">소중한 리뷰</h2>
                  <ul>
                  <c:forEach var="ReviewList" items="${ReviewList }" >
                     <li>
                        <div class="fh5co-food-desc">
                           <div>
                              <h3 style="font-family: 'Pretendard-Regular';">${ReviewList.pensionName }</h3>
                              <p>${ReviewList.rating } 좋아요</p>
                              <p>${ReviewList.r_content }</p>
                           </div>
                        </div>
                     </li>
                  </c:forEach>
                  </ul>
               </div>
            </div>

            
         </div>
        

      </div>
   </div>
   <%@ include file="footer.jsp"%>


</body>
</html>