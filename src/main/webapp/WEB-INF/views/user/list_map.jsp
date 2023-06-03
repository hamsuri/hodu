<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Pension List Map</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="jquery.rwdImageMaps.min.js"></script>
<script type="text/javascript">

$(document).ready(function(e) {

    $('img[usemap]').rwdImageMaps();

});

</script>
 
</head>

<body style="font-family: 'Pretendard-Regular';">
   <%@ include file="header.jsp"%>
   <div id="fh5co-menus" data-section="menu">
      <div class="container">
         <div class="row text-center fh5co-heading row-padded">
            <div>
               <img src="https://hodu.s3.ap-northeast-2.amazonaws.com//dog.png" height="64px" width="64px" style="margin-bottom: -50px">
            </div>
            <div class="col-md-8 col-md-offset-2">
               <h2 class="heading to-animate" style="font-family: 'Pretendard-Regular';">Pension List</h2>
               <p class="sub-heading to-animate" style="font-family: 'Pretendard-Regular';">원하는 지역을 선택해주세요.</p>
            </div>
            <div>
               <img src="https://hodu.s3.ap-northeast-2.amazonaws.com//지도.png" usemap="#image-map">
            
            <map name="image-map">
                <area target="_self" alt="강원" title="강원" href="${path }/likeList.do?region=강원" coords="396,111,415,109,434,101,459,101,479,105,509,103,536,103,556,96,573,77,579,52,586,66,591,86,602,99,607,119,616,134,623,152,634,158,643,172,649,185,664,198,675,209,680,228,690,246,699,257,709,273,714,299,695,313,667,311,648,312,643,303,630,310,628,318,613,308,595,305,577,300,557,287,537,288,527,286,511,296,495,288,502,265,502,224,470,212,465,180,472,171,471,156,460,149,436,130,426,129,411,133,398,123,395,117" shape="poly">
                <area target="_self" alt="경기" title="경기" href="${path }/likeList.do?region=경기" coords="391,119,385,134,375,148,353,164,349,197,331,197,288,190,284,208,297,221,318,255,345,289,370,323,386,339,434,337,457,321,482,304,495,292,504,233,468,222,462,183,465,157,441,138" shape="poly">
                <area target="_self" alt="충남" title="충남" href="${path }/likeList.do?region=충남" coords="325,314,298,330,275,356,294,378,309,428,331,436,328,460,349,482,368,485,387,464,414,466,436,474,464,493,486,480,448,419,427,377,443,361,431,340,372,344,357,327,340,320" shape="poly">
                <area target="_self" alt="경북" title="경북" href="${path }/likeList.do?region=경북" coords="623,317,637,320,642,307,660,314,697,316,715,303,723,323,727,359,732,383,727,426,727,492,746,480,729,547,690,538,672,554,631,559,604,548,569,549,555,531,536,518,519,507,517,486,542,461,519,433,520,406,517,393,526,373,546,371,547,356,573,351,583,358,596,346,600,335" shape="poly">
                <area target="_self" alt="충북" title="충북" href="${path }/likeList.do?region=충북" coords="496,297,516,302,528,293,545,294,560,296,583,305,599,310,598,324,588,338,580,349,553,348,538,358,518,373,503,388,511,400,512,428,512,445,525,449,533,453,524,464,519,480,504,482,488,477,478,463,475,451,470,439,464,423,455,409,439,381,450,362,451,348,444,338" shape="poly">
                <area target="_self" alt="전북" title="전북" href="${path }/likeList.do?region=전북" coords="340,493,377,486,389,470,405,469,417,479,436,476,455,493,486,490,506,493,508,506,493,517,483,530,475,552,477,598,453,595,432,600,410,595,406,575,387,587,371,574,353,591,335,601,324,580,338,570,353,557,331,553,344,539,357,529,365,527,370,514,376,505,352,503" shape="poly">
                <area target="_self" alt="경남" title="경남" href="${path }/likeList.do?region=경남" coords="517,511,548,533,555,545,578,553,605,550,615,562,642,563,659,557,666,565,696,541,726,567,694,621,663,640,646,650,618,634,637,693,589,690,565,664,536,662,565,709,531,696,511,691,504,673,503,649,482,627,480,605,492,567,483,552,493,525" shape="poly">
                <area target="_self" alt="전남" title="전남" href="${path }/likeList.do?region=전남" coords="316,586,302,621,267,640,245,701,264,766,332,792,381,791,425,765,467,741,504,730,509,706,485,663,495,646,480,637,475,613,459,601,417,606,394,590,370,587,340,610,324,596" shape="poly">
            </map>
            
            </div>
         </div>
      </div>
   </div>
   <%@ include file="footer.jsp"%>
   

</body>
</html>