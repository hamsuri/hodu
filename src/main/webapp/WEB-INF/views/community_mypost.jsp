<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Community Page</title>
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
						style="font-family: 'Pretendard-Regular';">HODU Community</h2>
					<p class="sub-heading to-animate"></p>
					<p style="margin-bottom: 80px"></p>
					

				</div>
			</div>
			
			<p style="margin-bottom: 0px"></p>
			<div class="container" style="width: 70%;">
				<table class="table table-hover" id="modalTable" style="text-align: center">
					<tbody style="font-family: 'Pretendard-Regular';">
					
						<tr>
							<th style="text-align: center">번호</th>
							<th style="text-align: center">제목</th>
							<th style="text-align: center">작성자</th>
							<th style="text-align: center">날짜</th>
							<th style="text-align: center">댓글 수</th>
						</tr>
						
						<c:forEach var="community" items="${CMyList }" varStatus="status" >
							<tr id="add-btn" onclick="location.href='CView.do?index=${community.index}'" style="cursor:pointer;">
								<td data-th="Supplier Code">${community.index }</td>
								<td data-th="Supplier Name">${community.title }</td>
								<td data-th="Invoice Number">${community.writer }</td>
								<td data-th="Invoice Date"><fmt:formatDate value="${community.write_date }" pattern="yyyy-MM-dd"/></td>
								<td data-th="Due Date">${Reply[status.index] } </td>
							</tr>
						</c:forEach>
			
					 
					</tbody>
				</table>
				
		
					
					<c:choose>
					<c:when test="${empty userId && empty partnerId}">
						<button type="button" onclick="alert('로그인이 필요합니다.');location.href='login';" class="btn btn-default pull-right" style="font-family: 'Pretendard-Regular'; font-size: 15px;" >글쓰기</button>
					</c:when>
					<c:otherwise>
						<button type="button" onclick="location.href='community_form';" class="btn btn-default pull-right" style="font-family: 'Pretendard-Regular'; font-size: 15px;" >글쓰기</button>
					</c:otherwise>
					</c:choose>
				
				<br></br>

		
				<div class="text-center">
					<ul class="pagination">
						<c:if test="${cPageMaker.prev }">
						<li><a href="${path }/CMyList.do?pageNum=${cPageMaker.startPage-1 }&amount=10" style="color:#5e493a">이전</a></li>
						</c:if>
						<c:forEach var="num" begin="${cPageMaker.startPage }" end="${cPageMaker.endPage }">
						<li><a href="${path }/CMyList.do?pageNum=${num}&amount=10" style="color:#5e493a">${num }</a></li>
						</c:forEach>
						<c:if test="${cPageMaker.next }">
						<li><a href="${path }/CMyList.do?pageNum=${cPageMaker.endPage+1 }&amount=10" style="color:#5e493a">다음</a></li>
						</c:if>
					</ul>
				</div>
			</div>
			
		</div>
</div>


<%@ include file="footer.jsp" %>





</body>

</html>