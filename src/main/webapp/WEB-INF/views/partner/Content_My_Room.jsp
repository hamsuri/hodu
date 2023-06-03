<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Pension List</title>
</head>
<body style="font-family: 'Pretendard-Regular';">
<%@ include file="pheader.jsp" %>
<div id="fh5co-featured" data-section="features">
         <div class="container">
            <div class="row text-center fh5co-heading row-padded">
               <div class="col-md-8 col-md-offset-2">
                  <h2 class="heading to-animate" style="font-family: 'Pretendard-Regular';">${ContentMyRoom.roomName }</h2>
                  <p class="sub-heading to-animate">등록된 객실 정보입니다.</p>
               </div>
            </div>
         
         <div class="form-group" style="text-align: end;">
            <button class="btn btn-primary" type="button" style="font-family: 'Pretendard-Regular';" onclick="location.href='${path }/ViewRoomInfo.do?room_idx=${ContentMyRoom.room_idx }'">수정</button>
         </div>
         
            <div class="row">
 
               <div class="fh5co-grid">
                  <div class="fh5co-v-half to-animate-2">
                     <div class="fh5co-v-col-2 fh5co-bg-img" style="background-image: url(https://hodu.s3.ap-northeast-2.amazonaws.com//${ContentMyRoom.img_room1 })"></div>
                     <div class="fh5co-v-col-2 fh5co-text fh5co-special-1 arrow-left">
                        <h2 style="font-family: 'Pretendard-Regular';">객실 이름</h2>
                        <span class="pricing">${ContentMyRoom.roomName }</span>
                     </div>
                  </div>
                  <div class="fh5co-v-half">
                     <div class="fh5co-h-row-2 to-animate-2">
                        <div class="fh5co-v-col-2 fh5co-bg-img" style="background-image: url(https://hodu.s3.ap-northeast-2.amazonaws.com//${ContentMyRoom.img_room2 })"></div>
                        <div class="fh5co-v-col-2 fh5co-text arrow-left">
                           <h2 style="font-family: 'Pretendard-Regular';">수용가능한 반려견 크기</h2>
                           <span class="pricing">${ContentMyRoom.dogSize } </span>
                          </div>
                     </div>
                     <div class="fh5co-h-row-2 fh5co-reversed to-animate-2">
                        <div class="fh5co-v-col-2 fh5co-bg-img" style="background-image: url(https://hodu.s3.ap-northeast-2.amazonaws.com//${ContentMyRoom.img_room3 })"></div>
                        <div class="fh5co-v-col-2 fh5co-text arrow-right">
                           <h2 style="font-family: 'Pretendard-Regular';">가격</h2>
                           <span class="pricing">${ContentMyRoom.price } 원</span>
                          </div>
                     </div>
                  </div>

                  <div class="fh5co-v-half">
                     <div class="fh5co-h-row-2 fh5co-reversed to-animate-2">
                        <div class="fh5co-v-col-2 fh5co-bg-img" style="background-image: url(https://hodu.s3.ap-northeast-2.amazonaws.com//${ContentMyRoom.img_room4 })"></div>
                        <div class="fh5co-v-col-2 fh5co-text arrow-right">
                           <h2 style="font-family: 'Pretendard-Regular';">수용가능한 반려견 수</h2>
                           <span class="pricing">${ContentMyRoom.dogNum } 마리</span>
                          </div>
                     </div>
                     <div class="fh5co-h-row-2 to-animate-2">
                        <div class="fh5co-v-col-2 fh5co-bg-img" style="background-image: url(https://hodu.s3.ap-northeast-2.amazonaws.com//${ContentMyRoom.img_room5 })"></div>
                        <div class="fh5co-v-col-2 fh5co-text arrow-left">
                           <h2 style="font-family: 'Pretendard-Regular';">수용가능한 인원수</h2>
                           <span class="pricing">${ContentMyRoom.peopleNum } 명</span>
                          </div>
                     </div>
                  </div>
                  <div class="fh5co-v-half to-animate-2">
                     <div class="fh5co-v-col-2 fh5co-bg-img" style="background-image: url(https://hodu.s3.ap-northeast-2.amazonaws.com//${ContentMyRoom.img_room6 })"></div>
                     <div class="fh5co-v-col-2 fh5co-text fh5co-special-1 arrow-left">
                        <h2 style="font-family: 'Pretendard-Regular';">세부사항</h2>
                       <span class="pricing"></span> 
                        <p style="margin-bottom: 20px"></p>
                        <span style="font-size:14pt">${RoomList.message_room }</span>
                     </div>
                  </div>

               </div>

            </div>

         </div>
      </div>
<%@ include file="footer.jsp" %>

</body>
</html>