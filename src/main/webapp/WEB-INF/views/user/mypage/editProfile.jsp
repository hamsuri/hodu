<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>

	<head>

	</head>
	<body style="font-family: 'Pretendard-Regular';">
	<%@ include file="../header.jsp" %>

      <div id="fh5co-contact" data-section="reservation">
         <div class="container">
            <div class="row text-center fh5co-heading row-padded" >
            
               <div class="col-md-8 col-md-offset-2">
                  <h2 class="heading to-animate" style="font-family: 'Pretendard-Regular';">Update form</h2>
               </div>
            </div>
          

 			<form action="editProfile.do" method="post">
          		<div class="container" style="text-align:center;padding-left: 4px">
          		
      		    <div class="col-md-6 col-md-offset-3">
                  <h3 style="font-family: 'Pretendard-Regular';">user form</h3>
                  <div class="form-group">
                     <label for="userId" class="sr-only">UserId</label>
                     <input id="userId" name="userId" class="form-control" value="${user.userId }"type="text" readonly>
                  </div>
                   <div class="form-group ">
                     <label for="userPw" class="sr-only">userPw</label>
                     <input id="userPw" name="userPw" class="form-control" value="${user.userPw }" type="password">
                  </div>
                   <div class="form-group ">
                     <label for="userName" class="sr-only">userName</label>
                     <input id="userName" name="userName" class="form-control" value="${user.userName }" type="text">
                  </div>
                   <div class="form-group ">
                     <label for="userBirth" class="sr-only">userBirth</label>
                     <input id="userBirth" name="userBirth" class="form-control" type="date">
                     <fmt:formatDate value="${user.userBirth }" pattern="yyyy-MM-dd"/>
                  </div>
                   <div class="form-group ">
                     <label for="sex" class="sr-only">sex</label>
                     <input id="sex" name="sex" class="form-control" value="${user.sex }" type="text">
                  </div>
                   <div class="form-group ">
                     <label for="userMobile" class="sr-only">userMobile</label>
                     <input id="userMobile" name="userMobile" class="form-control" value="${user.userMobile }" type="text">
                  </div>
                   <div class="form-group ">
                     <label for="userEmail" class="sr-only">userEmail</label>
                     <input id="userEmail" name="userEmail" class="form-control" value="${user.userEmail }" type="text">
                  </div>             
                  <div class="form-group ">
                     <input class="btn btn-primary" style="font-family: 'Pretendard-Regular';" value="수정" type="submit">
                   </div>
            </div>
         </div>
         </form>
      </div>
	
  
<%@ include file = "../footer.jsp" %>

</div>
	</body>
</html>
