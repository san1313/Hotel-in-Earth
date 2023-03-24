<%@page import="co.prod.vo.HotelsVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<script>
$( function() {
  $( "input" ).checkboxradio({
    icon: false
  });
} );
</script>

<style>
/* 버튼 색 변경 */
.ui-state-active, .ui-widget-content .ui-state-active, .ui-widget-header .ui-state-active, a.ui-button:active, .ui-button:active, .ui-button.ui-state-active:hover {
  
  border: rgb(46, 130, 46);
  background: rgb(38, 162, 38);
}
a{
  color: black;
}


/* 이벤트 항목 시작 ! */

* {box-sizing: border-box;}
body {font-family: Verdana, sans-serif;}
.event-mySlides {display: none;}
/* .event-slideshow-container img {vertical-align: middle;} */
.event-slideshow-container img{
    
    margin-top: 30px;
    width: 1560px;
    height: 750px;
}
/* Slideshow container */
.event-slideshow-container {
  max-width: 1560px;
  position: relative;
  margin: 0 auto;
}

/* Caption text */


/* Number text (1/3 etc) */
.event-numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.event-dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.event-active {
  background-color: #717171;
}

/* Fading animation */
.event-slideshow-container .event-fade {
  animation-name: event-fade;
  animation-duration: 1.5s;
  
}

@keyframes event-fade {
  from {opacity: .4} 
  to {opacity: 1}
}


/* 이벤트 항목 끝 ! */





/* 이미지필터 항목 시작 ! */
.hotel-filterDiv {
    float: left;
  /* background-color: #2196F3;
  color: #ffffff; */
  width: 270px;
  height: 320px;
  line-height: 28px;
  /* text-align: center; */
  margin: 10px;
  display: none;
  border-radius: 6%; 
}
.hotel-main-img{
    width: 270px;
    height: 240px;
    border-radius: 6%;    
}

.hotel-show {
  display: block;
}

.hotel-container {
  display: flex;
  justify-content: center;
  align-items: center;
  flex-wrap: wrap;
  margin-top: 20px;
  max-width: 1500px;
  margin: 0 auto;
  overflow: hidden;
}

/* Style the buttons */

.hotel-myBtnContainer{
    display: flex;
    justify-content: center;
    align-items: center;
    margin: 20px auto;
    margin-top: 40px;
    
}
.hotel-btn {
  border: none;
  outline: none;
  height: 45px;
  padding: 12px 16px;
  background-color: #f1f1f1;
  cursor: pointer;
}

.hotel-btn:hover {
  background-color: #ddd;
}

.hotel-btn.active {
  background-color: #666;
  color: white;
}



/* 이미지필터 항목 끝 ! */


.check-box{
          margin: 0 auto;
          margin-top: 30px;
          text-align: center;
          font-size: 30px;
          font-family: Arial;
        }
        

        input[type="checkbox"]{
          
          display: none;
        }
        input[type="checkbox"]{
        display: inline-block;
        width: 30px;
        height: 30px;
        }
</style>


<body>
    
<!-- /* 이벤트 항목 시작 ! */ -->

    <div class="event-slideshow-container">

        <div class="event-mySlides event-fade">
          <div class="event-numbertext">1 / 3</div>
          <img src="resources/img/hotels/Abiansermal/Abiansermal01.jpg" >
          
        </div>
        
        <div class="event-mySlides event-fade">
          <div class="event-numbertext">2 / 3</div>
          <img src="resources/img/hotels/Kohkaew/Kohkaew01.jpg" >
          
        </div>
        
        <div class="event-mySlides event-fade">
          <div class="event-numbertext">3 / 3</div>
          <img src="resources/img/hotels/Licin/Licin02.jpg" >
          
        </div>
        
        </div>
        <br>
        
        <div style = "text-align: center">
          <a class="event_button"><span class="event-dot"></span></a> 
          <a class="event_button"><span class="event-dot"></span> </a> 
          <a class="event_button"><span class="event-dot"></span> </a> 
        </div>
<!-- /* 이벤트 항목 끝 ! */ -->



<!--이미지 필터 시작 !-->
<fieldset>
    <div class="check-box">
      <label for="인도네시아" name="checkbox-nested-1">
      <input type="checkbox" class="hotel-check 인도네시아" name="checkbox-1" id="인도네시아">
      인도네시아</label>

      <label for="필리핀">
      <input type="checkbox" class="hotel-check 필리핀" id="필리핀">
      필리핀</label>

      <label for="태국">
      <input type="checkbox" class="hotel-check 태국" id="태국">
      태국</label>

      <label for="아랍에메리트">
      <input type="checkbox" class="hotel-check 아랍에메리트" id="아랍에메리트">
      아랍에메리트</label>

      <label for="프랑스">
      <input type="checkbox" class="hotel-check 프랑스" id="프랑스">
      프랑스</label>
      <label for="벨기에">
      <input type="checkbox" class="hotel-check 벨기에" id="벨기에">
      벨기에</label>
      <label for="독일">
      <input type="checkbox" class="hotel-check 독일" id="독일">
      독일</label>
      <label for="이탈리아">
      <input type="checkbox" class="hotel-check 이탈리아" id="이탈리아">
      이탈리아</label>
    </div>
  </fieldset>



<div id="hotel-myBtnContainer" class="hotel-myBtnContainer">
      <button class="hotel-btn all active" > Show all</button>
      <button class="hotel-btn 기상천외" > 기상천외</button>
      <button class="hotel-btn 보트" > 보트</button>
      <button class="hotel-btn 도시" > 도시</button>
      <button class="hotel-btn 저택" > 저택</button>
</div>

<div class="hotel-container">
	<c:forEach var="hotel" items="${hotelList }">
  <div class="hotel-filterDiv ${hotel.hotelView} ${hotel.hotelAddress}"><a href="hotelInfoForm.do?hotelId=${hotel.hotelId}"><img src="resources/img/hotels/${hotel.hotelName}/${hotel.hotelPhoto}" class="hotel-main-img">&nbsp;&nbsp;${hotel.hotelName}, ${hotel.hotelAddress}</a><br>&nbsp;&nbsp;￦<fmt:formatNumber value="${hotel.hotelPrice}" pattern="#,###" /></div>

  </c:forEach>
</div>

<!--이미지 필터 끝 !-->

<!-- /* 이벤트 항목 시작 ! */ -->



<script>
    var slideIndex = 0;
    showSlides();
    
    function showSlides() {
      let i;
      let slides = document.getElementsByClassName("event-mySlides");
      let dots = document.getElementsByClassName("event-dot");
      for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";  
      }
      slideIndex++;
      if (slideIndex > slides.length) {slideIndex = 1}    
      for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" event-active", "");
      }
      slides[slideIndex-1].style.display = "block";  
      dots[slideIndex-1].className += " event-active";
      setTimeout(showSlides, 4000); // Change image every 2 seconds
    }
    </script>

<!-- /* 이벤트 항목 끝 ! */ -->


<!-- /* 이미지필터 항목 시작 ! */ -->
    <script>
    
    /* 회원가입 메시지 */
    let msg = '${msg}';
    if(msg){
    	alert(msg);
    }
    
        var hotelArrList = []
      
      var checkBtns = document.getElementsByClassName("hotel-check");

      for(var i = 0; i< checkBtns.length; i++){
        checkBtns[i].addEventListener("click", function(){

          var btnArr1
          btnArr1 = this.className.split(" ")[1]

          let selectResult = btnArr1
              btnArr1 = "#"  +btnArr1

          let query = document.querySelector(btnArr1)
          if(query.checked){
          console.log("체크되었음")
          hotelArrList.push(selectResult)
          console.log("hotelArrList ▽")
          console.log(hotelArrList)

        }else{
          
          console.log("체크되어 있지 않음")
          hotelArrList.splice(hotelArrList.indexOf(selectResult),1)
          console.log("hotelArrList ▽")
          console.log(hotelArrList)

        }
   	});
}     
    


        filterSelection("all")
        function filterSelection(c) {
          var x, i;
          x = document.getElementsByClassName("hotel-filterDiv");
          // console.log(x)
          // console.log(x[1].className)
          // console.log(x[1].className.indexOf(c))
          if (c == "all") c = "";
          for (i = 0; i < x.length; i++) {
            w3RemoveClass(x[i], "hotel-show");
            if(hotelArrList.length > 0){
                for(let j = 0; j<hotelArrList.length; j++){
                    if (x[i].className.indexOf(c) > -1 && x[i].className.indexOf(hotelArrList[j]) > -1){
                        console.log("HOTELARRLIST 데이터 감지! 필터작동됌 ! : " + hotelArrList.length + hotelArrList[j] + x[i].className)
                    w3AddClass(x[i], "hotel-show");    
                    }
                        
                }
            }else{
                if (x[i].className.indexOf(c) > -1) w3AddClass(x[i], "hotel-show");
            }
          }
        }
        
        function w3AddClass(element, name) {
          var i, arr1, arr2;
          arr1 = element.className.split(" ");
          arr2 = name.split(" ");
          for (i = 0; i < arr2.length; i++) {
            if (arr1.indexOf(arr2[i]) == -1) {element.className += " " + arr2[i];}
          }
        }
        
        function w3RemoveClass(element, name) {
          var i, arr1, arr2;
          arr1 = element.className.split(" ");
          arr2 = name.split(" ");
          for (i = 0; i < arr2.length; i++) {
            while (arr1.indexOf(arr2[i]) > -1) {
              arr1.splice(arr1.indexOf(arr2[i]), 1);     
            }
          }
          element.className = arr1.join(" ");
        }
        
        // Add active class to the current button (highlight it)
        var btnContainer = document.getElementById("hotel-myBtnContainer");
        var btns = btnContainer.getElementsByClassName("hotel-btn");
        for (var i = 0; i < btns.length; i++) {
          btns[i].addEventListener("click", function(){
            var current = document.getElementsByClassName("active");
            current[0].className = current[0].className.replace(" active", "");
            this.className += " active";
          

          var btnArr1
            btnArr1 = this.className.split(" ")[1]
            console.log(btnArr1 + " 테스트 중인 클래스 이름자르는 기능")
            filterSelection(btnArr1);
        });
        }
        
        
       


//<!-- /* 이미지필터 항목 끝 ! */ -->

// <!-- 이벤트 버튼 항목 -->
        console.log(document.querySelectorAll('.event_button'));
        let buttons = document.querySelectorAll('.event_button')
        for(let j = 0; j < buttons.length; j++){
          buttons[j].addEventListener('click', function(){
            slideIndex = j;

            let slides = document.getElementsByClassName("event-mySlides");
          let dots = document.getElementsByClassName("event-dot");
          for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";  
          }
          
          if (slideIndex > slides.length) {slideIndex = 1}    
          for (i = 0; i < dots.length; i++) {
            dots[i].className = dots[i].className.replace(" event-active", "");
          }
          slides[j].style.display = "block";  
          dots[j].className += " event-active";

          });
        }




</script>

</body>

</html>