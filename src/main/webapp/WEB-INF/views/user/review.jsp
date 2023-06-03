<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Review</title>

<style>
/* 레이아웃 외곽 너비 400px 제한*/
.wrap{
    max-width: 480px;
    margin: 0 auto; /* 화면 가운데로 */
    background-color: #fff;
    height: 100%;
    padding: 20px;
    box-sizing: border-box;

}
.reviewform textarea{
    width: 100%;
    padding: 10px;
    box-sizing: border-box;
}
.rating .rate_radio {
    position: relative;
    display: inline-block;
    z-index: 20;
    opacity: 0.001;
    width: 60px;
    height: 60px;
    background-color: #fff;
    cursor: pointer;
    vertical-align: top;
    display: none;
}
.rating .rate_radio + label {
    position: relative;
    display: inline-block;
    margin-left: -4px;
    z-index: 10;
    width: 60px;
    height: 60px;
    background-image: url('/resources/images/starrate.png');
    background-repeat: no-repeat;
    background-size: 60px 60px;
    cursor: pointer;
    background-color: #f0f0f0;
}
.rating .rate_radio:checked + label {
    background-color: #fb6e14;
}


</style>
 
</head>
<body style="font-family: 'Pretendard-Regular';">
<%@ include file="header.jsp" %>

<div class="wrap">
    <h1 style="font-family: 'Pretendard-Regular';">후기</h1>
    <form name="reviewform" id="reviewform" class="reviewform" method="post" action="${path }/ReviewInsert.do?userId=${sessionScope.userId }">
        <input type="hidden" name="rate" id="rate" value="0"/>
        <h3 class="title_star" style="font-family: 'Pretendard-Regular';">별점과 리뷰를 남겨주세요.</h3>
 
        <div class="review_rating">
            <div class="warning_msg">별점을 선택해 주세요.</div>
            <div class="rating">
                <!-- 해당 별점을 클릭하면 해당 별과 그 왼쪽의 모든 별의 체크박스에 checked 적용 -->
                <input type="checkbox" id="rating1" value="1" class="rate_radio" title="1점">
                <label for="rating1"></label>
                <input type="checkbox" id="rating2" value="2" class="rate_radio" title="2점">
                <label for="rating2"></label>
                <input type="checkbox" id="rating3" value="3" class="rate_radio" title="3점">
                <label for="rating3"></label>
                <input type="checkbox" id="rating4" value="4" class="rate_radio" title="4점">
                <label for="rating4"></label>
                <input type="checkbox" id="rating5" value="5" class="rate_radio" title="5점">
                <label for="rating5"></label>
                <input type="hidden" name="rating">
            </div>
            
        </div>
        <div class="review_contents">
         	<div class="warning_msg">펜션 이름을 작성해주세요.</div>
            <input type="text" name="pensionName" value="${param.pensionName }" readonly style="width: 440px">
            <div class="warning_msg">소중한 리뷰를 작성해 주세요.</div>
            <textarea rows="10" name="R_content" class="review_textarea"></textarea>
        </div>   
        <div class="cmd" style="text-align: center">
            <input class="btn btn-primary" onclick="_submit();"  value="등록" style="font-family: 'Pretendard-Regular';">
        </div>     
    </form>
</div>

<%@ include file="footer.jsp" %>
</body>

	<script>

	//별점 마킹 모듈 프로토타입으로 생성
	function Rating(){};
	Rating.prototype.rate = 0;
	Rating.prototype.setRate = function(newrate){
	    //별점 마킹 - 클릭한 별 이하 모든 별 체크 처리
	    this.rate = newrate;
	    let items = document.querySelectorAll('.rate_radio');
	    items.forEach(function(item, idx){
	        if(idx < newrate){
	            item.checked = true;
	        }else{
	            item.checked = false;
	        }
	    });
	}
	let rating = new Rating();//별점 인스턴스 생성
	

	document.addEventListener('DOMContentLoaded', function(){
	    //별점선택 이벤트 리스너
	    document.querySelector('.rating').addEventListener('click',function(e){
	        let elem = e.target;
	        if(elem.classList.contains('rate_radio')){
	            rating.setRate(parseInt(elem.value));
	            $('input[name=rating]').attr('value', elem.value);

	        }
	    })
	});
	function _submit(){
		document.getElementById('reviewform').submit();
	};
	</script>
</html>