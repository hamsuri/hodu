<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>

  <head>

    <style>
   
      textarea {
        width: 100%;
        height: 100px;
      } 
      .area select {
         width: 100%;
          height: 55px;
        }
        .find-btn{
      text-align: center;
      }
    </style>
    
   </head>
   
   <body>
    <%@ include file ="pheader.jsp" %>

      <div id="fh5co-contact" data-section="reservation">
         <div class="container">
            <div class="row text-center fh5co-heading row-padded" >
            
               <div class="col-md-8 col-md-offset-2">
                  <h2 class="heading to-animate"  style="font-family: 'Pretendard-Regular';">객실 등록</h2>
               </div>
            
          

          <form id="roomInfo" method="post" action="${path }/roomRegister.do" enctype="multipart/form-data">
                <div class="container" style="text-align:center;padding-left: 4px">
                
                <div class="col-md-6 col-md-offset-3">
                  <h3 style="font-family: 'Pretendard-Regular';">Hodu Pension Room Register form</h3>
                 
                  <div class="form-group">
                     <label for="roomName" class="sr-only">roomName</label>
                     <input id="roomName" name="roomName" class="form-control" placeholder="객실명" type="text">
                     <input id="partnerId" name="partnerId" value="${sessionScope.partnerId }" type="hidden">
                     <input id="pensionName" name="pensionName" value="${sessionScope.pensionName }" type="hidden">
                 
                  </div>
                 
                  <div class="form-group">
                     <label for="price" class="sr-only">Price</label>
                     <input id="price" name="price" class="form-control" placeholder="객실 가격" type="number">
                  </div>
                             
                  <div class="form-group">
                     <label for="dogNum" class="sr-only">dogNum</label>
                     <input id="dogNum" name="dogNum" class="form-control" placeholder="수용 가능한 반려견 수" type="number">
                  </div>
                   
                 <div class="form-group">
               <p style="text-align : left; margin-bottom: 0px">수용 가능한 반려견 사이즈</p>
               </div>
               <div class="form-control" style="margin-bottom: 15px">
                     
                     <p style="font-size: 16px"> 
                      <input id="dogSize" name="dogSize" type='checkbox' name='check' value='소형견' /> 소형견 (10Kg 미만)&nbsp;&nbsp;&nbsp;
                      <input id="dogSize" name="dogSize" type='checkbox' name='check' value='중형견' /> 중형견 (10kg~25Kg 미만)&nbsp;&nbsp;&nbsp;
                      <input id="dogSize" name="dogSize" type='checkbox' name='check' value='대형견' /> 대형견 (25Kg 이상)
                  </p>
              
                </div>
                   
                   <div class="form-group ">
                     <label for="peopleNum" class="sr-only">peopleNumber</label>
                     <input id="peopleNum" name="peopleNum" class="form-control" placeholder="수용 가능한 인원 수" type="number">
                  </div>
                  
                 <div class="message">
                     <textarea id="message_room" name="message_room" class="message_area form-control" rows="8" cols="50" placeholder="객실 세부사항을 입력해주세요"></textarea>
                </div>
                  <input id="idx" name="idx" value="" type="hidden">
            </div>
         

            <p style="margin-bottom: 14px"></p>
            <div class="col-md-6 col-md-offset-3">
               <div class="form-group ">  
                <p style="text-align: left; margin-bottom: 10px"> 객실 사진 업로드</p>
                 <p style="width: 102%">
                <input id="img_room1" type="file" name="file1" class="form-control" onchange="readURL(this)">
                  <input id="img_room2" type="file" name="file2" class="form-control" onchange="readURL(this)">
                   <input id="img_room3" type="file" name="file3" class="form-control" onchange="readURL(this)">
                  <input id="img_room4" type="file" name="file4" class="form-control" onchange="readURL(this)">
                  <input id="img_room5" type="file" name="file5" class="form-control" onchange="readURL(this)">
                  <input id="img_room6" type="file" name="file6" class="form-control" onchange="readURL(this)">
                  
                 <img id="preview">
                 </p>
                   
                   <div class="find-btn" >
                   <input class="btn btn-primary" onclick="next();" value="다음" type="button" style="font-family: 'Pretendard-Regular';"/>
                   <input class="btn btn-primary" onclick="_submit();" value="제출" type="button"  style="font-family: 'Pretendard-Regular';"/>
             </div>
             </div>
            </div>
         </div>
          </form> 
          </div>
          </div> 
      
   
  
<%@ include file = "../footer.jsp" %>

</div>
   <script>
   // 1) 폼 두개 아이디로 제출 제출 후 다시 이 페이지 뜨게
   
      function next() {
      
         var roomName = $("#roomName").val();
         var price = $("#price").val();
         var dogNum = $("#dogNum").val();
         var dogSize = $("input[name=dogSize]:checkbox:checked").length;
         var peopleNum = $("#peopleNum").val();
         
         
         if(roomName == ""){
            alert("객실명을 입력하세요.");
            roomName.focus();
          } else if(price == ""){
            alert("객실 가격을 입력하세요.");
            price.focus();
         } else if(dogNum == ""){
            alert("수용 가능한 반려견 수를 입력하세요.");
            dogNum.focus();
         } else if(dogSize < 1){
            alert("반려견 사이즈를 선택하세요.");
            return false;
         } else if(peopleNum == ""){
            alert("수용 가능한 방문자 수를 입력하세요.");
            peopleNum.focus();
         } 
         
         
         $('input[name=idx]').attr('value',"0");
         document.getElementById('roomInfo').submit();
         
         console.log($('input[name=idx]').val());
      }
   
   // 2) 폼 두개 아이디로 제출 제출 후 빠져나가게
   
      function _submit() {
      
         var roomName = $("#roomName").val();
         var price = $("#price").val();
         var dogNum = $("#dogNum").val();
         var dogSize =  $("input[name=dogSize]:checkbox:checked").length;
         var peopleNum = $("#peopleNum").val();
         
         
         if(roomName == ""){
            alert("객실명을 입력하세요.");
            roomName.focus();
          } else if(price == ""){
            alert("객실 가격을 입력하세요.");
            price.focus();
         } else if(dogNum == ""){
            alert("수용 가능한 반려견 수를 입력하세요.");
            dogNum.focus();
         } else if(dogSize < 1){
            alert("반려견 사이즈를 선택하세요.");
            return false;
         } else if(peopleNum == ""){
            alert("수용 가능한 방문자 수를 입력하세요.");
            peopleNum.focus();
         } 
         
         $('input[name=idx]').attr('value',"1");
         document.getElementById('roomInfo').submit();

         console.log($('input[name=idx]').val());
         
      }
   
   
      function readURL(input) {
           if (input.files && input.files[0]) {
             var reader = new FileReader();
             reader.onload = function(e) {
               document.getElementById('preview').src = e.target.result;
               document.getElementById('preview').style.height='300px';
               document.getElementById('preview').style.height='300px';
             };
             reader.readAsDataURL(input.files[0]);
           } else {
             document.getElementById('preview').src = "";
           }
         }
      
   


   
   </script>
   </body>
</html>