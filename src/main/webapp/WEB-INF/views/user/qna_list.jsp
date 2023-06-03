<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>User Qna Page</title>
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

<%@ include file="header.jsp" %>
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
				                <option value="" <c:out value="${pageMaker.cri.type == null?'selected':'' }"/>>--</option>
				                <option value="T" <c:out value="${pageMaker.cri.type eq 'T'?'selected':'' }"/>>제목</option>
				                <option value="C" <c:out value="${pageMaker.cri.type eq 'C'?'selected':'' }"/>>내용</option>
				                <option value="W" <c:out value="${pageMaker.cri.type eq 'W'?'selected':'' }"/>>작성자</option>
				                <option value="TC" <c:out value="${pageMaker.cri.type eq 'TC'?'selected':'' }"/>>제목 + 내용</option>
				                <option value="TW" <c:out value="${pageMaker.cri.type eq 'TW'?'selected':'' }"/>>제목 + 작성자</option>
				                <option value="TCW" <c:out value="${pageMaker.cri.type eq 'TCW'?'selected':'' }"/>>제목 + 내용 + 작성자</option>
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
							<th style="text-align: center">답변완료</th>
						</tr>
					 <c:forEach var="question" items="${QList }" >
						<tr id="add-btn" data-value="${question.q_idx }" style="cursor:pointer;">
							<td data-th="Supplier Code">${question.q_idx }</td>
							<td data-th="Supplier Name">${question.q_title }</td>
							<td data-th="Invoice Number">${question.userId }</td>
							<td data-th="Invoice Date"><fmt:formatDate value="${question.q_date }" pattern="yyyy-MM-dd"/></td>
							<c:choose>
								<c:when test="${question.a_content != null }">
								<td data-th="Due Date">완료</td>
							</c:when>
							<c:otherwise>
								<td data-th="Due Date">작성중</td>
							</c:otherwise>
							</c:choose>
						</tr>
					</c:forEach>
					</tbody>
				</table>
				<c:choose>
				<c:when test="${empty userId}">
					<a class="btn btn-default pull-right" style="font-family: 'Pretendard-Regular'; font-size: 15px;" onclick="alert('로그인이 필요합니다.');location.href='login';" >글쓰기</a>
				</c:when>
				<c:otherwise>
					<a href="pensionName.do?pageNum=1&amount=10" class="btn btn-default pull-right" style="font-family: 'Pretendard-Regular'; font-size: 15px;" >글쓰기</a>
				</c:otherwise>
				</c:choose>
				<br></br>

				<form id="moveForm" method="get">
					<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
	        		<input type="hidden" name="amount" value="${pageMaker.cri.amount }">   
	        		<input type="hidden" name="keyword" value="${pageMaker.cri.keyword }">
	        		<input type="hidden" name="type" value="${pageMaker.cri.type }">
				</form>
				
				<div class="text-center">
					<ul class="pagination">
						<c:if test="${pageMaker.prev }">
						<li><a href="${path }/QList.do?pageNum=${pageMaker.startPage-1 }&amount=10" style="color:#5e493a">이전</a></li>
						</c:if>
						<c:forEach var="num" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
						<li><a href="${path }/QList.do?pageNum=${num}&amount=10" style="color:#5e493a">${num }</a></li>
						</c:forEach>
						<c:if test="${pageMaker.next }">
						<li><a href="${path }/QList.do?pageNum=${pageMaker.endPage+1 }&amount=10" style="color:#5e493a">다음</a></li>
						</c:if>
					</ul>
				</div>
			</div>
		</div>
</div>

<!-- 모달 -->
<div class="modal" id="modal">
<form action="Q_pwCheck.do" id="frm">
  <div class="modal_body">
    <div class="m_head">
      <div class="modal_title">게시글 비밀번호를 작성해주세요.</div>
      <div class="close_btn" id="close_btn">X</div>
    </div>
    <div class="m_body">
      <div class="modal_label">비밀번호</div>
      <input type="hidden" name="pageNum" value="1"/>
      <input type="hidden" name="amount" value="10"/>
      <input type="hidden" name="Q_idx" class="input_box" id="Q_idx"/>
      <input type="password" name="Q_pw" class="input_box" id="des_box"/>
    </div>
    <div class="m_footer">
      <div class="modal_btn cancle" id="close_btn">취소</div>
      <div class="modal_btn save" id="save_btn">제출</div>
    </div>
  </div>
  </form>
</div>
<!-- 모달 -->
<%@ include file="footer.jsp" %>



<script type="text/javascript">
	//click on 라벨 추가 모달 열기
	$(document).on('click', '#add-btn', function (e) {
		 console.log(idx);
	  $('#modal').addClass('show');
	});
	
	// 모달 닫기
	$(document).on('click', '#close_btn', function (e) {
		$('#modal').removeClass('show');

});
	// 제출
	$(document).on('click', '#save_btn', function (e) {
		 document.getElementById("Q_idx").value = idx; 
		 document.getElementById('frm').submit();

});
	 $("#modalTable tr").click(function(){     
		 
	        var str = ""
	        var tdArr = new Array();    // 배열 선언
	            
	        // 현재 클릭된 Row(<tr>)
	        var tr = $(this);
	        var td = tr.children();
	        
	        // tr.text()는 클릭된 Row 즉 tr에 있는 모든 값을 가져온다.
	        console.log("클릭한 Row의 모든 데이터 : "+tr.text());
	                
	   
	        // td.eq(index)를 통해 값을 가져올 수도 있다.
	        idx = td.eq(0).text();
	       

	 });
	 
	 const urlParams = new URL(location.href).searchParams;
	 const msg = urlParams.get('msg');
	 if(msg=='fail'){
		 alert("비밀번호가 틀렸습니다.");
         history.back();
	 }
	 
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