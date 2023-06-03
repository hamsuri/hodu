<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>

<head>

	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
	<body>
<c:choose>
<c:when test="${sessionScope.partnerId != null }">
<%@ include file="partner/pheader.jsp" %>
</c:when>
<c:otherwise>
<%@ include file="header.jsp" %>
</c:otherwise>
</c:choose>

      <div id="fh5co-contact" data-section="reservation">
         <div class="container">
            <div class="row text-center fh5co-heading row-padded" >
            
               <div class="col-md-8 col-md-offset-2">
                  <h2 class="heading to-animate" style="font-family: 'Pretendard-Regular';">HODU Community</h2>
               </div>
            </div>
         </div>   
    		
		  <form id="frm" action="CInsert.do"  method="post">
 
                <div class="container" style="text-align:center;padding-left: 4px">
                
                <div class="col-md-6 col-md-offset-3">
                <c:choose>
                <c:when test="${!empty sessionScope.userId && empty sessionScope.partnerId}">
                  <div class="form-group">
                     <label for="writer" class="sr-only">UserId</label>
                     <input id="writer" name="writer" class="form-control" value="${sessionScope.userId }" type="hidden">
                  </div>
                  </c:when>
                    <c:otherwise>
	                  <div class="form-group">
	                     <label for="writer" class="sr-only">PartnerId</label>
	                     <input id="writer" name="writer" class="form-control" value="${sessionScope.partnerId }" type="hidden">
	                  </div>
                  </c:otherwise>
                 </c:choose>
                   <div class="form-group ">
                     <label for="title" class="sr-only">title</label>
                     <input id="title" name="title" class="form-control" placeholder="제목" type="text">
                  </div>
             
                   <div class="form-group ">
                     <label for="content" class="sr-only">content</label>
                     <textarea name="content" id="content" class="message_area form-control" rows="8" cols="50" placeholder="내용을 입력해주세요"></textarea>
                  </div>       
                  <div class="form-group ">
                     <button class="btn btn-primary" onclick="community()" style="font-family: 'Pretendard-Regular';">제출</button>
                   </div>
               </div> 
                  </div>
				</form>
            </div>
 
   
  
<%@ include file = "footer.jsp" %>

	
	<!-- Main JS -->
	<script src="/resources/js/main.js"></script>
	<script type="text/javascript">
	function community(){

	    document.getElementById('frm').submit();
	}
	
	</script>

	</body>
</html>