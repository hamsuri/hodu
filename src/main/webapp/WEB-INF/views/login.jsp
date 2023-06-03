<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
        <title>Login Page</title>
        <link rel="stylesheet" href="/resources/style.css">
        <%@ include file ="header.jsp" %>
    </head>
    <body style="font-family: 'Pretendard-Regular';">
    
        <div class="wrap">
        <div id="fh5co-contact" data-section="reservation">
         <div class="container" style="height: 130px">
            <div class="row text-center fh5co-heading row-padded">
            
               <div class="col-md-8 col-md-offset-2">
                  <h2 class="heading to-animate" style="font-family: 'Pretendard-Regular';">LogIn</h2>
               </div>
            </div>
           </div>
            <div class="form-wrap">
                <div class="button-wrap">
                    <div id="btn"></div>
                    <button type="button" class="togglebtn" onclick="login()" style="margin-left: 8.4 ;font-family: 'Pretendard-Regular';">회원</button>
                    <button type="button" class="togglebtn" onclick="register()" style="margin-left: 18;font-family: 'Pretendard-Regular';">파트너</button>
                </div>
                <form id="login" action="logincheck.do" class="input-group" method="post">
                    <input type="text" id="userId" name="userId" class="input-field" placeholder="회원 아이디"  style="text-align: center;" required>
                    <input type="password" id="userPw" name="userPw" class="input-field" placeholder="비밀 번호" style="text-align: center;" required>
                    <button class="submit" style="margin-top: 50;">로그인</button>
                    <button class="nextLine"></button>
                    <div class="signin" style="text-align: center"><a href="signin" style="color: #5e493a">회원가입</a></div>
                    <c:if test="${msg == 'fail' }">
                       <script>
                        alert("로그인에 실패하였습니다.");
                        history.back();
                        </script>
                    </c:if>
                </form>
                <form id="register" action="plogincheck.do" class="input-group" method="post">
                    <input type="text" id="businessNum" name="businessNum" class="input-field" placeholder="사업자등록번호" style="text-align: center;" required>
                    <input type="text" id="partnerId" name="partnerId" class="input-field" placeholder="파트너 아이디" style="text-align: center;" required>
                    <input type="password" id="partnerPw" name="partnerPw" class="input-field" placeholder="비밀 번호" style="text-align: center;" required>
                    <button class="submit" style="margin-top: 10">로그인</button>
                    <button class="nextLine"></button>
           			<div class="signin" style="text-align: center"><a href="signin" style="color: #5e493a">회원가입</a></div>
                    <c:if test="${pmsg == 'fail' }">
                       <script>
                        alert("로그인에 실패하였습니다.");
                        history.back();
                        </script>
                    </c:if>
                    
                </form>
            </div>
            	<%@ include file="footer.jsp" %>
            </div>
  			</div>
       
        <script>
            var x = document.getElementById("login");
            var y = document.getElementById("register");
            var z = document.getElementById("btn");
            
            
            function login(){
                x.style.left = "50px";
                y.style.left = "450px";
                z.style.left = "0";
            }

            function register(){
                x.style.left = "-400px";
                y.style.left = "50px";
                z.style.left = "120px";
            }
        </script>
    </body>
</html>