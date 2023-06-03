
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>

<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>HODU STAY &mdash; Welcome To Hodu Stay</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
	<meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
	<meta name="author" content="FREEHTML5.CO" />

  <!-- 
	//////////////////////////////////////////////////////

	FREE HTML5 TEMPLATE 
	DESIGNED & DEVELOPED by FREEHTML5.CO
		
	Website: 		http://freehtml5.co/
	Email: 			info@freehtml5.co
	Twitter: 		http://twitter.com/fh5co
	Facebook: 		https://www.facebook.com/fh5co

	//////////////////////////////////////////////////////
	 -->

  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">

	<link href='https://fonts.googleapis.com/css?family=Playfair+Display:400,700,400italic,700italic|Merriweather:300,400italic,300italic,400,700italic' rel='stylesheet' type='text/css'>
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="/resources/css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="/resources/css/icomoon.css">
	<!-- Simple Line Icons -->
	<link rel="stylesheet" href="/resources/css/simple-line-icons.css">
	<!-- Datetimepicker -->
	<link rel="stylesheet" href="/resources/css/bootstrap-datetimepicker.min.css">
	<!-- Flexslider -->
	<link rel="stylesheet" href="/resources/css/flexslider.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="/resources/css/bootstrap.css">

	<link rel="stylesheet" href="/resources/css/style.css">


	<!-- Modernizr JS -->
	<script src="/resources/js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	</head>
	<body style="font-family: 'Pretendard-Regular';">

	<div id="fh5co-container">
		<div id="fh5co-home" class="js-fullheight" data-section="home">

			<div class="flexslider" style="background-color: black;">
				
				<div class="fh5co-overlay"></div>
				<div class="fh5co-text">
					<div class="container">
						<div class="row">
							<h1 class="to-animate" style="font-size:200px;">HODU STAY</h1>
                     		<h2 class="to-animate" style="font-size: 40dpx;">private dog pension</h2>
                   			<h3 class="to-animate" style="font-size: 25px; font-family: 'Pretendard-Regular'; color:#fb6e14">반려견과 함께하는 호두스테이</h3>
                         </div>
					</div>
				</div>
			  	<ul class="slides">
			   	<li data-stellar-background-ratio="0.5"></li>
			   	<li data-stellar-background-ratio="0.5"></li>
			   	<li data-stellar-background-ratio="0.5"></li>
			  	</ul>

			</div>
			
		</div>
		
	<%@ include file="./partner/pheader.jsp" %>

		  <div id="fh5co-about" data-section="about">
         <div class="fh5co-2col fh5co-bg to-animate-2">
         <img src="https://hodu.s3.ap-northeast-2.amazonaws.com//3.jpg" style="width: 100%; height: 100%;">
         </div>
         <div class="fh5co-2col fh5co-text">
            <h2 class="heading to-animate">About Us</h2>
            <p class="to-animate" style="font-size:18px;"><span class="firstcharacter">
            </span>쉼 없는 일상속에서 휴식과 영감을 얻기 위해, 
					놀고싶은 순간 망설임 없이, 
					나의 영원한 단짝 반려견과 함께 편안한 하루를 선물하고 싶은 HODU STAY 입니다.
					저희 호두스테이는 소중한 반려견과 함께 누구나 마음편히 놀 수 있도록 정보를 제공해주는 회사입니다.
					호두스테이는 국내 최다 반려견 숙박업소를 보유하고 있습니다. 
					위치정보를 활용하여 다양한 국내외 상품을 쉽고 빠르게 검색, 예약할 수 있으며
					고객 편의 서비스를 통해 안심하고 즐기는 환경을 제공하고 있습니다.
					호두스테이는 숙박, 문화, 주거, 상업의 공간까지 다양한 영역에서 
					재충전(Refresh),오락(Entertain), 숙박(Stay), 여행(Travel)을 아우르는 R.E.S.T. 플레이스 구축에
					앞장서고 있으며, 자체 개발한 클라우드 기반 자동화 솔루션을 여가산업에 적용해
					글로벌 호스피탈리티 시장의 기술혁신을 선도하고 있습니다.
					소중한 반려견과 함께 숙박의 패러다임을 전환하는 애견 글로벌 숙박 플랫폼 호두스테이로 떠나보세요.
            	</p>
            	<p style ="margin-bottom:70px;">
            <p class="text-center to-animate"><a href="CList.do?pageNum=1&amount=10" class="btn btn-primary btn-outline">Community</a></p>
         </div>
      </div>

      <div id="fh5co-sayings">
         <div class="container">
            <div class="row to-animate">

               <div class="flexslider">
                  <ul class="slides">
                     
                      <li>
                        <blockquote>
                           <img alt="오류" src="https://hodu.s3.ap-northeast-2.amazonaws.com//광고3.jpg">
                        </blockquote>
                     </li>
                     <li>
                        <blockquote>
                          <img alt="오류" src="https://hodu.s3.ap-northeast-2.amazonaws.com//광고2.jpg">
                        </blockquote>
                     </li>
                     <li>
                        <blockquote>
                           <img alt="오류" src="https://hodu.s3.ap-northeast-2.amazonaws.com//광고1.jpg">
                        </blockquote>
                     </li>
                     <li>
                        <blockquote>
                           <img alt="오류" src="https://hodu.s3.ap-northeast-2.amazonaws.com//광고4.jpg">
                        </blockquote>
                     </li>
                     
                     
                  </ul>
               </div>

            </div>
         </div>
      </div>

<%@ include file="footer.jsp" %>
	
	
	
	
	<!-- jQuery -->
	<script src="/resources/js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="/resources/js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="/resources/js/bootstrap.min.js"></script>
	<!-- Bootstrap DateTimePicker -->
	<script src="/resources/js/moment.js"></script>
	<script src="/resources/js/bootstrap-datetimepicker.min.js"></script>
	<!-- Waypoints -->
	<script src="/resources/js/jquery.waypoints.min.js"></script>
	<!-- Stellar Parallax -->
	<script src="/resources/js/jquery.stellar.min.js"></script>

	<!-- Flexslider -->
	<script src="/resources/js/jquery.flexslider-min.js"></script>
	<script>
		$(function () {
	       $('#date').datetimepicker();
	   });
		
	</script>
	<!-- Main JS -->
	<script src="/resources/js/main.js"></script>

	</body>
</html>

