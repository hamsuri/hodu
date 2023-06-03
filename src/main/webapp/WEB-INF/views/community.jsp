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
					
					<div class="search_wrap">
				        <div class="search_area">
				        	<select name="type" style="width: 165px; height: 41px;">
				                <option value="" <c:out value="${cPageMaker.cri.type == null?'selected':'' }"/>>--</option>
				                <option value="T" <c:out value="${cPageMaker.cri.type eq 'T'?'selected':'' }"/>>제목</option>
				                <option value="C" <c:out value="${cPageMaker.cri.type eq 'C'?'selected':'' }"/>>내용</option>
				                <option value="W" <c:out value="${cPageMaker.cri.type eq 'W'?'selected':'' }"/>>작성자</option>
				                <option value="TC" <c:out value="${cPageMaker.cri.type eq 'TC'?'selected':'' }"/>>제목 + 내용</option>
				                <option value="TW" <c:out value="${cPageMaker.cri.type eq 'TW'?'selected':'' }"/>>제목 + 작성자</option>
				                <option value="TCW" <c:out value="${cPageMaker.cri.type eq 'TCW'?'selected':'' }"/>>제목 + 내용 + 작성자</option>
				            </select>    
				            <input type="text" name="keyword" style="width: 440px; height: 41px;">
				            <button>Search</button>
				            
				        </div>
				    </div>    
					<!-- //검색 폼 영역 -->
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
						 <c:forEach var="community" items="${CList }" varStatus="status" >
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
					
					<c:choose>
					<c:when test="${empty userId && empty partnerId}">
						<button type="button" onclick="alert('로그인이 필요합니다.');location.href='login';" class="btn btn-default pull-right" style="font-family: 'Pretendard-Regular'; font-size: 15px;" >내가 쓴 글</button>
					</c:when>
					<c:otherwise>
						<button type="button" onclick="location.href='CMyList.do?writer=${sessionScope.userId}';" class="btn btn-default pull-right" style="font-family: 'Pretendard-Regular'; font-size: 15px;" >내가 쓴 글</button>
					</c:otherwise>
					</c:choose>
				
				<br></br>

				<form id="moveForm" method="get">
					<input type="hidden" name="pageNum" value="${cPageMaker.cri.pageNum }">
	        		<input type="hidden" name="amount" value="${cPageMaker.cri.amount }">   
	        		<input type="hidden" name="keyword" value="${cPageMaker.cri.keyword }">
	        		<input type="hidden" name="type" value="${cPageMaker.cri.type }">
				</form>
				
				<div class="text-center">
					<ul class="pagination">
						<c:if test="${cPageMaker.prev }">
						<li><a href="${path }/CList.do?pageNum=${cPageMaker.startPage-1 }&amount=10" style="color:#5e493a">이전</a></li>
						</c:if>
						<c:forEach var="num" begin="${cPageMaker.startPage }" end="${cPageMaker.endPage }">
						<li><a href="${path }/CList.do?pageNum=${num}&amount=10" style="color:#5e493a">${num }</a></li>
						</c:forEach>
						<c:if test="${cPageMaker.next }">
						<li><a href="${path }/CList.do?pageNum=${cPageMaker.endPage+1 }&amount=10" style="color:#5e493a">다음</a></li>
						</c:if>
					</ul>
				</div>
			</div>
		</div>
</div>


<%@ include file="footer.jsp" %>



<script type="text/javascript">

	 

	 
	    let moveForm = $("#moveForm");
	 //버튼 클릭
		$(".search_area button").on("click", function(e){
        e.preventDefault();
       
       let type = $(".search_area select").val();
       let keyword = $(".search_area input[name='keyword']").val();
       
       if(!type){
           alert("검색 종류를 선택하세요.");
           return false;
       }
       
       if(!keyword){
           alert("키워드를 입력하세요.");
           return false;
       }        
   
       moveForm.find("input[name='type']").val(type);
       moveForm.find("input[name='keyword']").val(keyword);
       moveForm.find("input[name='pageNum']").val(1);
       
       document.getElementById('moveForm').submit();
       
    });
</script>


</body>

</html>