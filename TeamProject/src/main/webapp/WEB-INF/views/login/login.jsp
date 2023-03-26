<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
@import url('https://fonts.googleapis.com/css?family=Montserrat:400,800');
* {
    box-sizing: border-box;
}
body {
    font-family: 'Montserrat', sans-serif;
    background: #f6f5f7;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: -20px 0 50px;
		margin-top: 20px;
}
h1 {
    font-weight: bold;
    margin: 0;
}
p {
    font-size: 14px;
    font-weight: 100;
    line-height: 20px;
    letter-spacing: .5px;
    margin: 20px 0 30px;
}
span {
    font-size: 12px;
}
a {
    color: #333;
    font-size: 14px;
    text-decoration: none;
    margin: 15px 0;
}
.container {
    background: #fff;
    border-radius: 10px;
    box-shadow: 0 14px 28px rgba(0, 0, 0, .2), 0 10px 10px rgba(0, 0, 0, .2);
    position: relative;
    overflow: hidden;
    width: 370px;
    max-width: 100%;
    min-height: 480px;
}
.form-container form {
    background: #fff;
    display: flex;
    flex-direction: column;
    padding:  0 50px;
    height: 100%;
    justify-content: center;
    align-items: center;
    text-align: center;
}
.social-container {
    margin: 20px 0;
}
.social-container a {
    border: 1px solid #ddd;
    border-radius: 50%;
    display: inline-flex;
    justify-content: center;
    align-items: center;
    margin: 0 5px;
    height: 40px;
    width: 40px;
}
.form-container input {
    background: #eee;
    border: none;
    padding: 12px 15px;
    margin: 8px 0;
    width: 100%;
}
button {
    border-radius: 20px;
    border: 0.5px solid black;
    background-color:lightcoral;
    color: #fff;
    font-size: 12px;
    font-weight: bold;
    padding: 12px 45px;
    letter-spacing: 1px;
    text-transform: uppercase;
    transition: transform 80ms ease-in;
}
button:active {
    transform: scale(.95);
}
button:focus {
    outline: none;
}
button.ghost {
    background: transparent;
    border-color: #fff;
}
.form-container {
    position: absolute;
    top: 0;
    height: 100%;
    transition: all .6s ease-in-out;
}
.sign-in-container {
    left: 0;
    width: 50%;
    z-index: 2;
}
.sign-up-container {
    left: 0;
    width: 50%;
    z-index: 1;
    opacity: 0;
}
.overlay-container {
    position: absolute;
    top: 0;
    left: 50%;
    width: 50%;
    height: 100%;
    overflow: hidden;
    transition: transform .6s ease-in-out;
    z-index: 100;
}
.overlay {
    background: #ff416c;
    background: linear-gradient(to right, #ff4b2b, #ff416c) no-repeat 0 0 / cover;
    color: #fff;
    position: relative;
    left: -100%;
    height: 100%;
    width: 200%;
    transform: translateY(0);
    transition: transform .6s ease-in-out;
}
.overlay-panel {
    position: absolute;
    top: 0;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    padding: 0 40px;
    height: 100%;
    width: 50%;
    text-align: center;
    transform: translateY(0);
    transition: transform .6s ease-in-out;
}
.overlay-right {
    right: 0;
    transform: translateY(0);
}
.overlay-left {
    transform: translateY(-20%);
}
/* Move signin to right */
.container.right-panel-active .sign-in-container {
    transform: translateY(100%);
}
/* Move overlay to left */
.container.right-panel-active .overlay-container {
    transform: translateX(-100%);
}
/* Bring signup over signin */
.container.right-panel-active .sign-up-container {
    transform: translateX(100%);
    opacity: 1;
    z-index: 5;
}
/* Move overlay back to right */
.container.right-panel-active .overlay {
    transform: translateX(50%);
}
/* Bring back the text to center */
.container.right-panel-active .overlay-left {
    transform: translateY(0);
}
/* Same effect for right */
.container.right-panel-active .overlay-right {
    transform: translateY(20%);
}
.footer {
	margin-top: 25px;
	text-align: center;
}
.icons {
	display: flex;
	width: 30px;
	height: 30px;
	letter-spacing: 15px;
	align-items: center;
}	
</style>
</head>

<body>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
    integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
    crossorigin="anonymous">
    
<div class="container" id="container">
	<div class="form-container find-pw-container">
		<form class ="findpw" name="idfindscreen" method = "POST">
			<div class = "search-title">
				<h3>비밀번호 찾기</h3>
			</div>
		<section class = "form-search">
			<div class = "find-mail">
				<input type="hidden" name="hiddenumail" value="search">
				<input type="email" name="umail" class = "btn-name" placeholder = "등록한 이메일" required>
			<br>
			</div>
			<div class = "find-ninkname">
				<input type="text" name="uname" class = "btn-phone" placeholder = "등록한 닉네임" required>
			</div>
			<br>
	</section>
	<div class ="btnSearch">
		<button onclick="pw_search()">찾기</button>
		<button onclick="history.back()">돌아가기</button>
 	</div>
 </form>
</div>
</div>
 <script>
 let msg = '${msg}';
 if(msg){
 	alert(msg);
 }
 
 
 function pw_search() { 
	 
	 	
	 	var frm = document.idfindscreen;
		
	 	
	 	if (frm.umail.value.length <= 1) {
		  alert("메일을 입력해주세요");
		  return;
		 }
		 if (frm.uname.value.length < 1) {
			  alert("닉네임을 입력해주세요");
			  return;
		 }
	 frm.method = "post";
	 frm.action = "findPw.do"; //넘어간화면
	 frm.submit();  
	 }
 
 
 
 </script>
 
</body>
</html>