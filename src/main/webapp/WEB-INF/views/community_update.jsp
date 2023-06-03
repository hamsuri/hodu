<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>User Qna Content</title>
</head>

<body style="font-family: 'Pretendard-Regular';">

<c:choose>
<c:when test="${sessionScope.partnerId != null }">
<%@ include file="partner/pheader.jsp" %>
</c:when>
<c:otherwise>
<%@ include file="header.jsp" %>
</c:otherwise>
</c:choose>
   <div id="fh5co-menus" data-section="menu">
      <div class="container">
			<div class="row text-center fh5co-heading row-padded">
				<div class="col-md-8 col-md-offset-2">
					<h2 class="heading to-animate"
						style="font-family: 'Pretendard-Regular';">Community</h2>
					<p class="sub-heading to-animate"></p>
					<p style="margin-bottom: 80px"></p>
				</div>
			</div>
			<p style="margin-bottom: -30px"></p>
			<div class="container" style="width: 70%;">
			<form action="CUpdate.do?index=${CView2.index }" id="CUpdate" method="post">
				<table class="table table-bordered">
				
				   <tr>
				      <th style="width: 200px; text-align: center;">작성자</th>
				      <td>${CView2.writer }</td>
				   </tr>
				 
				   <tr>
					  <th style="text-align: center;">게시글 날짜</th>
				   	  <td><fmt:formatDate value="${CView2.write_date }" pattern="yyyy-MM-dd HH:mm:ss"/></td>	
				   </tr>   
				   
				   <tr>
					    <th style="text-align: center;">제목</th>
					   <td><input value=" ${CView2.title }" id="title" name="title" type="text"/></td>
				   </tr>   
				   
				   <tr>
					   <th style="height:200px; text-align: center;">내용</th>
					   <td><input value=" ${CView2.content }" id="content" name="content" type="text"/></td>
				   </tr>		  
				 
				</table>
				
				<div class="col-sm-12" style="text-align: -webkit-center;">
				<input type="hidden" value="${CView2.index }" name="index">
				<button class="btn btn-primary btn-block" onclick="CUpdate();"style="width: 70px; font-family: 'Pretendard-Regular'; display: inline-block; margin-top: 0px">제출</button>			
				</div>
			</form>	
	</div>
	</div>
	</div>
	<script>
	
	function CUpdate(){
		document.getElementById('CUpdate').submit();
	}
	
	</script>

</body>

</html>