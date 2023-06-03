
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
	<link rel="stylesheet" href="/resources/css/font.css">

	<!-- Modernizr JS -->
	<script src="/resources/js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	</head>
	<body style="font-family: 'Pretendard-Regular';">
	


		<div class="js-sticky">
			<div class="fh5co-main-nav">
				<div class="container-fluid">
					<div class="fh5co-menu-1">
						<a href="/admin/adminCList.do?pageNum=1&amount=10">커뮤니티</a>
						<a href="/admin/adminQList.do?pageNum=1&amount=10" >Q&A</a>
					</div>
					<div class="fh5co-logo">
						<a href="/admin">HODU</a>
					</div>
				<c:choose>
					<c:when test="${sessionScope.userId == null && sessionScope.partnerId == null}">
						<div class="fh5co-menu-2">				
							<a href="signin" >회원 가입</a>
							<a href="/login" >로그인</a>
						</div>
					</c:when>
					<c:when test="${sessionScope.userId == 'admin'}">
						<div class="fh5co-menu-2">
							<a href="/admin/userList.do" >회원관리</a>
							<a href="/admin/logout.do">로그아웃</a>
						</div>
					</c:when>
					<c:when test="${sessionScope.partnerId == 'admin'}">
						<div class="fh5co-menu-2">
							<a href="/admin/partnerList.do" >파트너관리</a>
							<a href="/admin/logout.do">로그아웃</a>
						</div>
					</c:when>
					<c:otherwise>
						<div class="fh5co-menu-2">
							<a href="/user/mypage">마이페이지</a>
							<a href="logout.do">로그아웃</a>
						</div>
					</c:otherwise>
				</c:choose>	
				</div>
				
			</div>
		</div>

	
	
	
	
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

