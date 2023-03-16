<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style>
th {
	background-color: cadetblue;
}

.mod {
	background-color: red;
	color: white;
}

.accordion {
	background-color: #eee;
	color: #444;
	cursor: pointer;
	padding: 18px;
	width: 100%;
	text-align: left;
	border: none;
	outline: none;
	transition: 0.4s;
}

/* Add a background color to the button if it is clicked on (add the .active class with JS), and when you move the mouse over it (hover) */
.active, .accordion:hover {
	background-color: #ccc;
}

/* Style the accordion panel. Note: hidden by default */
.panel {
	padding: 0 18px;
	background-color: white;
	display: none;
	overflow: hidden;
}

.addBtn {
	margin-left: 140px;
}
</style>
<meta charset="UTF-8">
<title>hotel in earth 관리자 페이지</title>
</head>
<body>
	<h1>관리자 페이지</h1>
	<p>[호텔 관리]</p>

	<button class="accordion">호텔추가</button>
	<div class="panel">
		사진: <input type="text" name="사진"><br> 사진: <input
			type="text" name="사진"><br> 사진: <input type="text"
			name="사진"><br> 사진: <input type="text" name="사진"><br>
		사진: <input type="text" name="사진"><br> 사진: <input
			type="text" name="사진"><br> 사진: <input type="text"
			name="사진"><br> 사진: <input type="text" name="사진"><br>
		사진: <input type="text" name="사진"><br>
		<button class="addBtn" type="submit">추가하기</button>
	</div>

	<table>
		<thead>

			<tr>
				<th>사진</th>
				<th>ID</th>
				<th>위치</th>
				<th>호텔명</th>
				<th>전화번호</th>
				<th>서비스</th>
				<th>전망</th>
				<th>별점</th>
				<th>주소</th>
				<th>체크인</th>
				<th>체크아웃</th>
				<th>찜목록</th>
				<th class="mod">수정하기</th>
			</tr>
		</thead>
		<c:forEach items="${managehotellist }" var="hotel">
			<tr>
				<td>${hotel.hotelPhoto }</td>
				<td>${hotel.hotelId }</td>
				<td>${hotel.hotelLocation }</td>
				<td>${hotel.hotelName }</td>
				<td>${hotel.hotelTel }</td>
				<td>${hotel.hotelService }</td>
				<td>${hotel.hotelView }</td>
				<td>${hotel.hotelRate }</td>
				<td>${hotel.hotelAddress }</td>
				<td>${hotel.hotelCheckIn }</td>
				<td>${hotel.hotelCheckOut }</td>
				<td>${hotel.hotelLike }</td>
				<td><button>호텔정보수정</button></td>
			</tr>

		</c:forEach>

	</table>




</body>

<script>
	var acc = document.getElementsByClassName("accordion");
	var i;

	for (i = 0; i < acc.length; i++) {
		acc[i].addEventListener("click", function() {
			/* Toggle between adding and removing the "active" class,
			to highlight the button that controls the panel */
			this.classList.toggle("active");

			/* Toggle between hiding and showing the active panel */
			var panel = this.nextElementSibling;
			if (panel.style.display === "block") {
				panel.style.display = "none";
			} else {
				panel.style.display = "block";
			}
		});
	}
</script>


</html>