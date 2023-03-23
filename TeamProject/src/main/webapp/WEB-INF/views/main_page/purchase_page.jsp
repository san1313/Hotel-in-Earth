<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<title>Insert title here</title>

<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">



    <style>
.buy-container {
  box-sizing: border-box;
}

.buy-container .row {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  -ms-flex-wrap: wrap; /* IE10 */
  flex-wrap: wrap;
  margin: 0 -16px;
}

.buy-container .col-50 {
  -ms-flex: 50%; /* IE10 */
  flex: 50%;
}

.buy-container .col-75 {
  -ms-flex: 75%; /* IE10 */
  flex: 75%;
}

.buy-container .col-25,
.buy-container .col-50,
.buy-container .col-75 {
  padding: 0 16px;
}

.buy-container .container {
  background-color: #f2f2f2;
  padding: 5px 20px 15px 20px;
  border: 1px solid lightgrey;
  border-radius: 3px;
  width: 800px
}

.buy-container input[type=text] {
  width: 100%;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 3px;
}

.buy-container label {
  margin-bottom: 10px;
  display: block;
}

.buy-container .icon-container {
  margin-bottom: 20px;
  padding: 7px 0;
  font-size: 24px;
}

.buy-container .btn {
  background-color: #04AA6D;
  color: white;
  padding: 12px;
  margin: 10px 0;
  border: none;
  width: 100%;
  border-radius: 3px;
  cursor: pointer;
  font-size: 17px;
}

.buy-container .btn:hover {
  background-color: #45a049;
}

.buy-container a {
  color: #2196F3;
}


.buy-container .text-container{
            margin-left: 20px;
        }

        .buy-container{
            width: 1350px;
            height: 2000px;
            margin: 30px auto;
        }
        buy-container::-webkit-scrollbar {
            display: none; /* Chrome, Safari, Opera*/
        }


        .buy-container .leftside{
            float: left;
            padding-inline: 20px;
            
            border: 1px solid gray;
            border-radius: 1em;
            width: 900px;
            height: 2000px;
        }

      

        .buy-container .chance{
            margin-top: 40px;
            margin-left: 10px;
            width: 400px;
            height: 100px;
            padding-inline: 20px;
            border: 2px solid gray;
            border-radius: 1em;
        }
          .buy-container .rightside{
          float: right;
          top: 20px;
          background: white;
          border-radius: 1em;
          width: 430px;
          height: 450px;
          border: 1px solid gray;
          box-shadow: 5px 5px 5px gray;
          font-size: 25px;
          }
          .buy-container .rightside hr{
          background-color: black;
          height: 1px;
          border: 0;
          }
        .inner-text{
          width: 100%;
          height: 320px;
        }
        .inner-text .left-text{
          float: left;
          text-align: left;
          padding-inline: 10px;
          width: 220px;
        }
        .inner-text .right-text{
          float: right;
          text-align: right;
          margin-right: 20px;
          width: 160px;
          height: 200px;
        }
        .result{
          margin-right: 10px;
          text-align: right;
        }

        .reservation{
          
          width: 220px;
          height: 84px;
          
        }
    </style>

</head>
<body>
    <div class="buy-container">
        <div class="leftside">
            <div class="text-container">
                <br><h1>확인 및 결제</h1>
                <div class="chance"><br><b>흔치 않은 기회입니다. <br>HIMZ님의 숙소는 보통 예약이 가득 차 있습니다.</b></div>
                <br><h2>예약 정보</h2>

                <p>날짜 <br>5월 15일~21일</p><hr><br>
            </div>


            
            <div class="col-75">
                <div class="container">
                  <form action="/action_page.php">
                  
                    <div class="row">
                      <div class="col-50">
                        <h3>Billing Address</h3>
                        <label for="fname"><i class="fa fa-user"></i> 이름</label>
                        <input type="text" id="fname" name="firstname" placeholder="HIMZ Kim">
                        <label for="email"><i class="fa fa-envelope"></i> Email</label>
                        <input type="text" id="email" name="email" placeholder="john@example.com">
                        <label for="adr"><i class="fa fa-address-card-o"></i> 주소</label>
                        <input type="text" id="adr" name="address" placeholder="542 W. 15th Street">
                        <label for="city"><i class="fa fa-institution"></i> 도시</label>
                        <input type="text" id="city" name="city" placeholder="Essen">
            
                        <div class="row">
                          <div class="col-50">
                            <label for="state">국가</label>
                            <input type="text" id="state" name="state" placeholder="Deutschland">
                          </div>
                          <div class="col-50">
                            <label for="zip">Zip</label>
                            <input type="text" id="zip" name="zip" placeholder="10001">
                          </div>
                        </div>
                      </div>
            
                      <div class="col-50">
                        <h3>Payment</h3>
                        <label for="fname">사용가능한 카드</label>
                        <div class="icon-container">
                          <i class="fa fa-cc-visa" style="color:navy;"></i>
                          <i class="fa fa-cc-amex" style="color:blue;"></i>
                          <i class="fa fa-cc-mastercard" style="color:red;"></i>
                          <i class="fa fa-cc-discover" style="color:orange;"></i>
                        </div>
                        <label for="cname">카드소유자</label>
                        <input type="text" id="cname" name="cardname" placeholder="HIMZ Kim">
                        <label for="ccnum">카드번호</label>
                        <input type="text" id="ccnum" name="cardnumber" placeholder="1111-2222-3333-4444">
                        <label for="expmonth">만료 월</label>
                        <input type="text" id="expmonth" name="expmonth" placeholder="September">
                        <div class="row">
                          <div class="col-50">
                            <label for="expyear">만료 년도</label>
                            <input type="text" id="expyear" name="expyear" placeholder="2018">
                          </div>
                          <div class="col-50">
                            <label for="cvv">CVV코드</label>
                            <input type="text" id="cvv" name="cvv" placeholder="352">
                          </div>
                        </div>
                      </div>
                      
                    </div>
                    <label>
                      <input type="checkbox" checked="checked" name="sameadr"> Shipping address same as billing
                    </label>
                    <input type="submit" value="Continue to checkout" class="btn">
                  </form>
                </div>
              </div>
                
              <div class="text-container">
                <br>
                <hr>
                <h2>환불 정책</h2>
                
                <p>입실 1달 전까지 무료로 취소하실 수 있습니다. 2주 전에 취소하면 부분 환불을 받으실 수 있습니다.</p>
                <br>
                <hr>
                <h2>기본 규칙</h2>
                <p>훌륭한 게스트가 되기 위한 몇 가지 간단한 규칙을 지켜주실 것을 모든 게스트에게 당부드리고 있습니다.</p>
                <p>· 숙소 이용규칙을 준수하세요</p>
                <p>· 호스트의 집도 자신의 집처럼 아껴주세요</p>
                
              </div>





        </div>

     

           <div class="rightside">
          <div class="inner-text">
              <div class="left-text">
                <br><b style="font-size: 30px;">￦102,340</b> /박</p>
                <br><p>￦252,175 x 5박</p>
                <br><p style="font-size: 18px;">에어비앤비 서비스 수수료</p>
              </div>

               <br>
               <div class="right-text">
                <br>
                <br><p>￦1,260,875</p>
                <br><p style="font-size: 18px;">￦26,767</p>
              </div>
            </div>
            <hr>
        <div class="result">합계 : ￦1,287,642</div>
        </div>

    </div>
    꿹뚥깗!



</body>

</html>