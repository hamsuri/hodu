<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>

<head>

	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
	<body>
	<%@ include file="header.jsp" %>


      <div id="fh5co-contact" data-section="reservation">
         <div class="container">
            <div class="row text-center fh5co-heading row-padded" >
            
               <div class="col-md-8 col-md-offset-2">
                  <h2 class="heading to-animate" style="font-family: 'Pretendard-Regular';">QnA</h2>
               </div>
            </div>
         </div>   

		  <form id="QnA" action="Q_insert.do?pageNum=1&amount=10" name="QnA_form" method="post">
 
                <div class="container" style="text-align:center;padding-left: 4px">
                
                <div class="col-md-6 col-md-offset-3">
                  <div class="form-group">
                     <label for="userId" class="sr-only">UserId</label>
                     <input id="userId" name="userId" class="form-control" value="${userId }" type="hidden">
                  </div>
                	<div class="area" style="margin-bottom: 15px"> 
							<select id="area" class="form-control" name="pensionName">
								<option selected disabled>펜션을 선택하세요.</option>
								<c:forEach var="NameSelect" items="${NameSelect }">
								<option value="${NameSelect }">${NameSelect }</option>
								</c:forEach>
							</select>
							<div id="areaError" class="error"></div>
						</div>
                  <div class="form-group ">
                     <label for="Q_title" class="sr-only">Q_title</label>
                     <input id="Q_title" name="Q_title"  class="form-control" placeholder="제목" type="text" >
                  </div>
                   <div class="form-group ">
                     <label for="Q_content" class="sr-only">Q_content</label>
                     <textarea name="Q_content" id="Q_content" class="message_area form-control" rows="8" cols="50" placeholder="질문을 입력해주세요"></textarea>
                  </div>       
                  <div class="form-group ">
                     <label for="Q_pw" class="sr-only">Q_pw</label>
                     <input id="Q_pw" name="Q_pw" class="form-control" placeholder="비밀번호" type="password">
                  </div>
                  <div class="form-group ">
                     <button class="btn btn-primary" type="submit" style="font-family: 'Pretendard-Regular';">제출</button>
                   </div>
               </div> 
                  </div>
				</form>
            </div>
 
   
  
<%@ include file = "footer.jsp" %>

	
	<!-- Main JS -->
	<script src="/resources/js/main.js"></script>

	</body>
</html>