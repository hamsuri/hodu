<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Partner Qna content</title>
</head>



<body style="font-family: 'Pretendard-Regular';">

<%@ include file="pheader.jsp" %>
   <div id="fh5co-menus" data-section="menu">
      <div class="container">
			<div class="row text-center fh5co-heading row-padded">
				<div class="col-md-8 col-md-offset-2">
					<h2 class="heading to-animate"
						style="font-family: 'Pretendard-Regular';">QnA List</h2>
					<p class="sub-heading to-animate"></p>
					<p style="margin-bottom: 80px"></p>
				</div>
			</div>
			<p style="margin-bottom: -30px"></p>
			<div class="container" style="width: 70%;">
				<form action="${path}/Acomplete.do?Q_idx=${AView.q_idx }" method="post">
					<table class="table table-bordered">
					
					   <tr>
					      <th style="width: 200px; text-align: center;">아이디</th>
					      <td>${AView.userId }</td>
					   </tr>
					 
					   <tr>
						  <th style="text-align: center;">펜션 이름</th>
					   	  <td>${AView.pensionName }</td>	
					   </tr>   
					   
					   <tr>
						    <th style="text-align: center;">제목</th>
						   <td>${AView.q_title }</td>
					   </tr>   
					   
					   <tr>
						   <th style="height:200px; text-align: center;">내용</th>
						   <td>${AView.q_content }</td>
					   </tr>		   
	
					   <tr>
						   <th style="height:200px; text-align: center;">답변</th>
						   <td><textarea id="A_content" name="A_content" style='width:100%'  rows="8" cols="50">${AView.a_content }</textarea></td>
					   </tr>	
					 
					</table>
					<div class="col" style="text-align: center" >
						<button class="btn btn-primary" type="button" onclick="location.href='${path }/AList.do?pageNum=1&amount=10&pensionName=${pensionName}'" style="width: 70px; font-family: 'Pretendard-Regular';">목록</button>
						<button class="btn btn-primary" type="submit" style="width: 70px; font-family: 'Pretendard-Regular';">제출</button>
					</div>
				</form>
				
				
				<br></br>
				
			</div>
		</div>
</div>
<%@ include file="footer.jsp" %>


</body>

</html>