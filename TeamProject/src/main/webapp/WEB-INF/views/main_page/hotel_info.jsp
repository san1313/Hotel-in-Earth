<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
    .hotel-info-container {
      font-family: Arial;
      margin: 0 auto;
      width: 1350px;
      border: #222 solid 1px;
      
    }
    
    hr{
        opacity: 0.5;
    }
    
    
    
    * {
      box-sizing: border-box;
    }
    
    .hotel-info-container img {
      vertical-align: middle;
    }
    
    .info-title{
        margin: 0 auto;
        width: 1350px;
        
    }
    
    /* Position the image container (needed to position the left and right arrows) */
    .info-container {
        position: relative;
      width: 1350px;
      height: 1000px;
      margin: 0 auto;
      text-align: center;
      margin-bottom: 30px;
    }
    
    
    .info-container img{
        float: left;
        width: 1080px;
      height: 1000px;
    }
    
    /* Hide the images by default */
    .mySlides {
        
      display: none;
    }
    
    /* Add a pointer when hovering over the thumbnail images */
    .cursor {
      cursor: pointer;
    }
    
    
    
    /* Position the "next button" to the right */
    .next {
      right: 0;
      border-radius: 3px 0 0 3px;
    }
    
    /* On hover, add a black background color with a little bit see-through */
    
    
    /* Number text (1/3 etc) */
    .numbertext {
      color: #f2f2f2;
      font-size: 12px;
      padding: 8px 12px;
      position: absolute;
      top: 0;
    }
    
    /* Container for image text */
    .row{
        float: left;
        width: 270;
        height: 1000px;
    }
    
    .row img{
        width: 270px;
        height: 200px;
    }
    
    .row:after {
      content: "";
      display: table;
      clear: both;
    }
    
    /* Six columns side by side */
    /* .column {
      float: left;
      
    } */
    
    /* Add a transparency effect for thumnbail images */
    .demo {
      opacity: 0.6;
    }
    
    .active,
    .demo:hover {
      opacity: 1;
    }
    /* .container img{
        width: 1500px;
        height: 800px;
    
    } */
    
    /* text area 입니다 ! */
    .into-text-area{
        margin: 30px auto;
        width: 1200px;
        overflow: hidden;
        
    }
    
    .info-text{
        float: left;
        width: 775px;
        border: red 1px solid;
        font-size: 30px;
        
    }
    
    .calendar{
        float: left;
        margin-left: 30px;
        width: 350px;
        border: blue 1px solid;
    }
    
    /* 구글Maps 관련! 관계자외 접근금지 !!!! */
    #map {
    float: left;
      margin-top: 30px;
      width: 100%;
      height: 550px;
    }
    
    </style>
</head>
<body>
<div class="hotel-info-container">
    <div class="info-title">
        <h1>제목</h1>
        
    </div>

        <h2 style="text-align:center">Slideshow Gallery</h2>
        
    <div class="info-container">
        
    <div class="mySlides">
        <div class="numbertext">1 / 5</div>
        <img src="jpg/Abiansermal/Abiansermal01.jpg">
    </div>

    <div class="mySlides">
        <div class="numbertext">2 / 5</div>
        <img src="jpg/Abiansermal/Abiansermal02.jpg" >
    </div>

    <div class="mySlides">
        <div class="numbertext">3 / 5</div>
        <img src="jpg/Abiansermal/Abiansermal03.jpg" >
    </div>
        
    <div class="mySlides">
        <div class="numbertext">4 / 5</div>
        <img src="jpg/Abiansermal/Abiansermal04.jpg" >
    </div>

    <div class="mySlides">
        <div class="numbertext">5 / 5</div>
        <img src="jpg/Abiansermal/Abiansermal05.jpg">
    </div>
    
    
    <div class="row">
        <div class="column">
        <img class="demo cursor" src="jpg/Abiansermal/Abiansermal01.jpg" onclick="currentSlide(1)" alt="The Woods">
        </div>
        <div class="column">
        <img class="demo cursor" src="jpg/Abiansermal/Abiansermal02.jpg" onclick="currentSlide(2)" alt="Cinque Terre">
        </div>
        <div class="column">
        <img class="demo cursor" src="jpg/Abiansermal/Abiansermal03.jpg" onclick="currentSlide(3)" alt="Mountains and fjords">
        </div>
        <div class="column">
        <img class="demo cursor" src="jpg/Abiansermal/Abiansermal04.jpg" onclick="currentSlide(4)" alt="Northern Lights">
        </div>
        <div class="column">
        <img class="demo cursor" src="jpg/Abiansermal/Abiansermal05.jpg" onclick="currentSlide(5)" alt="Nature and sunrise">
        </div>    
    </div>
    </div>

<div class="into-text-area">

        <div class="info-text">

            <p><b style="font-size: 40px;">성훈 님이 호스팅하는 펜션</b><br>
                최대 인원 6명·침실 3개·침대 3개·욕실 3개</p>

            <hr>
            <br/><b style="font-size: 40px;">업무 전용 공간</b><br>와이파이를 갖추고 업무에 적합한 개인실입니다.<br>
            <br/><b style="font-size: 40px;">셀프 체크인</b><br>키패드를 이용해 체크인하세요.
            <br/><p><b style="font-size: 40px;">무료 주차 혜택을 누리세요</b><br>해당 지역에서 무료 주차가 가능한 몇 안 되는 숙소 중 하나입니다.</p>
            <br/>객실전망,전경

            <hr>
            <br/><p class="long-info">영월의 스테이하우스는 커플이 프라이빗하게 쉬기 좋은 객실입니다.
            별도의 출입문 계단이 있는 2층 전체를 사용합니다.
            창밖으로 보이는 주변 뷰와 예쁜 정원이 아름답고, 창밖으로 들리는 계곡물소리와 지저귀는 새소리 그리고 맑은 공기는 도시에서 지친 마음에 휴식을 주며, 매일 청결하게 관리하는 침구는 편안한 잠자리를 제공합니다.
            김삿갓계곡의 외씨버선길과 가깝고 숙소 바로 앞에는 아름다운 계곡이 흐르고 있습니다.
            객실에서는 Marshall 스피커로 감미로운 음악과 함께 빔 프로젝터로 보다 실감나고 편하게 영화를 감상하실 수 있으며, 해질녘에는 아름다운 정원의 해먹에 누워 자연속에서 재충전의 시간을 가져보세요~
            + 예약가능인원: 성인 2명(영월 스테이하우스는 노키즈존으로 운영됩니다.)</p>
            <hr>
            
            <br/><b style="font-size: 40px;">숙소 편의시설 (hotel_service)</b><br>정원 전망<br>산 전망<br>호수나 강과 인접<br>주방<br>무선 인터넷<br>

            <hr>
            <b style="font-size: 30px;"> CHECK IN : 16:00</b><br>
            <b style="font-size: 30px;"> CHECK OUT : 10:00</b>
            
            <hr>

            <br/>전화번호, 객실주소
            <br/>체크 인/아웃 시간
           
            <br/>

        </div>

        <div class="calendar">
            날자 설정 구역 !!
            <br>별점
            <br>1박 당 금액
            <br>체크 인/아웃 시간
            <br>인원수 체크 <br>
            <br>[예약버튼]
        
        </div>
        


        
        <script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
        
        <link rel="stylesheet" type="text/css" href="./style.css" />
        <script type="module" src="./index.js"></script>
    </head>

        <div id="map"></div>
        
    </div>
</div>  <!-- hotel-info-container -->




<script>
let slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  let i;
  let slides = document.getElementsByClassName("mySlides");
  let dots = document.getElementsByClassName("demo");
  
  if (n > slides.length) {slideIndex = 1}
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";
  }
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";
  dots[slideIndex-1].className += " active";
  
}
</script>

<!-- 구글 Maps 구역 ! 관계자외 접근금지!!! -->

<script
src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA1_svzfJy0-Fske1vs4OlE21pnfoW43Gw&callback=initMap&v=weekly"
defer
></script>

<script>

function initMap() {
  const myLatLng = { lat: -34.397, lng: 150.644 }
  const map = new google.maps.Map(document.getElementById("map"), {
    zoom: 12,
    center: myLatLng,
  });

  new google.maps.Marker({
    position: myLatLng,
    map,
    title: "Hello World!",
  });
}

window.initMap = initMap;

</script>

</body>
</html>