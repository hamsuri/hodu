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

<%@ include file="aheader.jsp" %>
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
				<table class="table table-bordered">
					
					   <tr>
					      <th style="width: 200px; text-align: center;">작성자</th>
					      <td>${CView.writer }</td>
					   </tr>
					 
					   <tr>
						  <th style="text-align: center;">게시글 날짜</th>
					   	  <td><fmt:formatDate value="${CView.write_date }" pattern="yyyy-MM-dd HH:mm:ss"/></td>	
					   </tr>   
					   
					   <tr>
						    <th style="text-align: center;">제목</th>
						   <td>${CView.title }</td>
					   </tr>   
					   
					   <tr>
						   <th style="height:200px; text-align: center;">내용</th>
						   <td>${CView.content }</td>
					   </tr>		  
					 
				</table>
	
					<div class="col-sm-12" style="text-align: -webkit-center;">
						<button class="btn btn-primary btn-block" type="button" onclick="location.href='adminCList.do?pageNum=1&amount=10'" style="width: 70px; display: inline-block; font-family: 'Pretendard-Regular';">목록</button>
						<button id="cdelete" class="btn btn-primary btn-block" type="button" style="width: 70px; font-family: 'Pretendard-Regular'; display: inline-block; margin-top: 0px">삭제</button>		
						
						
					</div>
					
		
				
				<br></br>
				<div class="container" style="width: 640px;">
						  <div class="card">
						    <div class="card-body">
						    <form action="ReplyInsert.do" id="frm">
						      <h4 class="card-title" style="font-family: 'Pretendard-Regular';">댓글 입력</h4>
						      <input type="checkbox" id="secret" value="secret" name="secret" style="cursor:pointer;"> 비밀댓글
						      <input type="hidden" id="index" name="index" value="${CView.index }">
						      <p class="card-text"><input type="text" id="reply_content" name="reply_content" class="form-control" style="margin-bottom: -20px"></p>
						      <c:choose>
							      <c:when test="${!empty sessionScope.userId && empty sessionScope.partnerId }">
								  	  <input type="hidden" name="writer" value="${sessionScope.userId }">
								      <a onclick="reply();" class="card-link" style="cursor:pointer;">작성</a>
							      </c:when>
							      <c:when test="${empty sessionScope.userId && !empty sessionScope.partnerId }">
								      <input type="hidden" name="writer" value="${sessionScope.partnerId }">
								      <a onclick="reply();" class="card-link" style="cursor:pointer;">작성</a>
							      </c:when>
							      <c:otherwise>
							          <a onclick="alert('로그인이 필요합니다.')" class="card-link" style="cursor:pointer;">작성</a>
							      </c:otherwise>
						      </c:choose>
						      </form>
						    </div>
						  </div>
						</div>
				
				<c:forEach var="Reply_list" items="${ReplyList }" varStatus="vs">
					<div class="container" style="width: 640px;">
					  <div class="card">
					    <div class="card-body" style="margin-top: 50px">
					      <h4 class="card-title" style="font-family: 'Pretendard-Regular';">${Reply_list.writer } 
					      <fmt:formatDate value="${Reply_list.reply_date }" pattern="yyyy-MM-dd HH:mm:ss"/></h4>
					      <p class="card-text" style="font-family: 'Pretendard-Regular'; margin-bottom: 0px">${Reply_list.reply_content }</p>
					      <a href="${path }/admin/adminReplyDelete.do?reply_index=${Reply_list.reply_index }&index=${CView.index }" class="card-link">삭제</a>
					    
					    </div>
					  </div>
					</div>
				</c:forEach>
			</div>
		</div>
</div>

<!-- 댓글 수정 모달 S -->
<div class="modal" id="modal">
<form action="ReplyUpdate.do" id="frm1">
  <div class="modal_body">
    <div class="m_head">
      <div class="modal_title">댓글을 수정해주세요.</div>
      <div class="close_btn" id="close_btn">X</div>
    </div>
    <div class="m_body">
      <div class="modal_label">댓글 내용</div>
      <input type="hidden" name="index" class="input_box" id="index" value="${CView.index }"/>
      <input type="hidden" name="reply_index" class="input_box" id="reply_index"/>
      <input type="text" name="reply_content" class="input_box" id="des_box"/>
    </div>
    <div class="m_footer">
      <div class="modal_btn cancle" id="close_btn">취소</div>
      <div class="modal_btn save" id="save_btn">제출</div>
    </div>
  </div>
</form>
</div>
<!--댓글 수정 모달 E -->

<%@ include file="afooter.jsp" %>

<script type="text/javascript">
	function reply(){
	
	    document.getElementById('frm').submit();
	}
	//click on 라벨 추가 모달 열기

	$(document).on('click', '#add-btn', function (e) {
		
		//idx = $('#add-btn').data('value');
		idx= $(this).attr('data-value');
		console.log(idx);
		 $('#modal').addClass('show');
	
	});

	// 모달 닫기
	$(document).on('click', '#close_btn', function (e) {
		$('#modal').removeClass('show');
	
	});
	// 제출
	$(document).on('click', '#save_btn', function (e) {
		document.getElementById("reply_index").value = idx; 
		document.getElementById('frm1').submit();
	
	});
	
	$(function(){
		$('#cdelete').click(function(){
			if(confirm("삭제하시겠습니까?")){
				self.location.href = "adminCDelete.do?index=${CView.index}";
				alert("삭제 되었습니다.");
			} else{
				alert("취소 되었습니다.");
			}
		})
	});
	


</script>
</body>

</html>