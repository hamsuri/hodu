<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Qna Page</title>
</head>

  <style>
      .modal {
        position: absolute;
        top: 0;
        left: 0;

        width: 100%;
        height: 100%;

        display: none;

        background-color: rgba(0, 0, 0, 0.4);
      }

      .modal.show {
        display: block;
      }

      .modal_body {
        position: absolute;
        top: 50%;
        left: 50%;
        width: 400px;
        height: 350px;
        background-color: rgb(255, 255, 255);
        border-radius: 10px;
        box-shadow: 0 2px 3px 0 rgba(34, 36, 38, 0.15);
        transform: translateX(-50%) translateY(-50%);
      }
      .m_head{
        height: 10%;
        padding: 20px;
        display: flex;
        justify-content: space-between;
        background-color:#e7e5e5;
        border-top-left-radius: 10px;
        border-top-right-radius: 10px;
      }
      .m_body{
        height: 80%;
        padding: 20px;
      }
      .m_footer{
        height: 10%;
        padding: 20px;
        background-color:#e7e5e5;
        border-bottom-left-radius: 10px;
        border-bottom-right-radius: 10px;
        display: flex;
        justify-content: end;
      }
      .modal_title{
        font-size: 18px;
        color: gray;
        font-weight: 500;
        align-self: center;
      }
      .close_btn{
        font-size: 20px;
        color: rgb(139, 139, 139);
        font-weight: 900;
        cursor: pointer;
        align-self: center;
      }
      .modal_label{
        padding-top: 10px;
      }
      .input_box{
        width: 100%;
        border: 1px solid rgb(189, 189, 189);
        height: 30px;
      }
      .modal_btn{
        width: 80px;
        height: 35px;
        border-radius: 5px;
        text-align: center;
        font-size: 14px;
        font-weight: bolder;
        padding-top: 5px;
        margin-left: 5px;
        font-family: 'Pretendard-Regular';
        align-self: center;
      }
      .cancle{
        background-color: white;
        color: black;
      }
      .save{
        background-color: #fb6e14;
        color: white;
      }
    </style>

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
					   

					
					<div class="search_wrap">
				        <div class="search_area">
				        	<select name="type" style="width: 165px; height: 41px;">
				                <option value="" <c:out value="${pPageMaker.PCri.type == null?'selected':'' }"/>>--</option>
				                <option value="T" <c:out value="${pPageMaker.PCri.type eq 'T'?'selected':'' }"/>>제목</option>
				                <option value="C" <c:out value="${pPageMaker.PCri.type eq 'C'?'selected':'' }"/>>내용</option>
				                <option value="W" <c:out value="${pPageMaker.PCri.type eq 'W'?'selected':'' }"/>>작성자</option>
				                <option value="TC" <c:out value="${pPageMaker.PCri.type eq 'TC'?'selected':'' }"/>>제목 + 내용</option>
				                <option value="TW" <c:out value="${pPageMaker.PCri.type eq 'TW'?'selected':'' }"/>>제목 + 작성자</option>
				                <option value="TCW" <c:out value="${pPageMaker.PCri.type eq 'TCW'?'selected':'' }"/>>제목 + 내용 + 작성자</option>
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
				<table class="table table-hover" id="modalTable">
					<tbody style="font-family: 'Pretendard-Regular';">
					
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th>작성자</th>
							<th>날짜</th>
							<th>답변완료</th>
						</tr>
					 <c:forEach var="Answer" items="${AList }" >
						<tr id="add-btn" data-value="${Answer.q_idx }" onclick="location.href='${path}/AView.do?Q_idx=${Answer.q_idx }'" style="cursor:pointer;">
							<td data-th="Supplier Code">${Answer.q_idx }</td>
							<td data-th="Supplier Name">${Answer.q_title }</td>
							<td data-th="Invoice Number">${Answer.userId }</td>
							<td data-th="Invoice Date"><fmt:formatDate value="${Answer.q_date }" pattern="yyyy-MM-dd"/></td>
							<td data-th="Due Date">완료</td>
							
						</tr>
					</c:forEach>
					</tbody>
				</table>
				<br></br>

				<form id="moveForm" method="get">
					<input type="hidden" name="pageNum" value="${pPageMaker.PCri.pageNum }">
	        		<input type="hidden" name="amount" value="${pPageMaker.PCri.amount }">   
	        		<input type="hidden" name="keyword" value="${pPageMaker.PCri.keyword }">
	        		<input type="hidden" name="type" value="${pPageMaker.PCri.type }">
	        		<input type="hidden" name="pensionName" value="${sessionScope.pensionName }">
				</form>
				
				<div class="text-center">
					<ul class="pagination">
						<c:if test="${pPageMaker.prev }">
						<li><a href="${path }/AList.do?pageNum=${pPageMaker.startPage-1 }&amount=10&pensionName=${pensionName}" style="color:#5e493a">이전</a></li>
						</c:if>
						<c:forEach var="num" begin="${pPageMaker.startPage }" end="${pPageMaker.endPage }">
						<li><a href="${path }/AList.do?pageNum=${num}&amount=10&pensionName=${pensionName}" style="color:#5e493a">${num }</a></li>
						</c:forEach>
						<c:if test="${pPageMaker.next }">
						<li><a href="${path }/AList.do?pageNum=${pPageMaker.endPage+1 }&amount=10&pensionName=${pensionName}" style="color:#5e493a">다음</a></li>
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