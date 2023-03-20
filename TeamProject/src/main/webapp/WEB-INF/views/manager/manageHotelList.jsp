<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
	
<jsp:include page="../../../includes/sidebar.jsp"></jsp:include>
<jsp:include page="../../../includes/top.jsp"></jsp:include>
		

		
			<style>
			
			.center {
  text-align: center;
}
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
				.active,
				.accordion:hover {
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

				/*-------------------------------------모달----------------------------------------*/
				#modal.modal-overlay {
					width: 100%;
					height: 100%;
					position: absolute;
					left: 0;
					top: 0;
					display: none;
					flex-direction: column;
					align-items: center;
					justify-content: center;
					background: rgba(255, 255, 255, 0.25);
					box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
					backdrop-filter: blur(1.5px);
					-webkit-backdrop-filter: blur(1.5px);
					border-radius: 10px;
					border: 1px solid rgba(255, 255, 255, 0.18);
				}

				#modal .modal-window {
					background: rgba(69, 139, 197, 0.70);
					box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
					backdrop-filter: blur(13.5px);
					-webkit-backdrop-filter: blur(13.5px);
					border-radius: 10px;
					border: 1px solid rgba(255, 255, 255, 0.18);
					width: 400px;
					height: 500px;
					position: relative;
					top: -100px;
					padding: 10px;
				}

				#modal .title {
					padding-left: 10px;
					display: inline;
					text-shadow: 1px 1px 2px gray;
					color: white;

				}

				#modal .title h2 {
					display: inline;
				}

				#modal .close-area {
					display: inline;
					float: right;
					padding-right: 10px;
					cursor: pointer;
					text-shadow: 1px 1px 2px gray;
					color: white;
				}

				#modal .content {
					margin-top: 20px;
					padding: 0px 10px;
					text-shadow: 1px 1px 2px gray;
					color: white;
				}
			</style>
			<meta charset="UTF-8">
			<title>hotel in earth 관리자 페이지</title>

			<p>[호텔 관리]</p>

			<button class="accordion">호텔추가</button>
			<div class="panel">
				<form action="manageHotelAdd.do" method="post">
					사진: <input type="text" name="hotelPhoto"><br>
					ID: <input type="text" name="hotelId"><br>
					위치: <input type="text" name="hotelLocation"><br>
					호텔명: <input type="text" name="hotelName"><br>
					전화번호: <input type="text" name="hotelTel"><br>
					서비스: <textarea cols="20" rows="3" name="hotelService"></textarea> <br>
					전망: <input type="text" name="hotelView"><br>
					주소: <input type="text" name="hotelAddress"><br>
					체크인: <input type="text" name="hotelCheckIn"><br>
					체크아웃: <input type="text" name="hotelCheckOut"><br>
					<button class="addBtn" type="submit">추가하기</button>
				</form>
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
						<th class="mod">삭제</th>
						
					</tr>
				</thead>
				<c:forEach items="${managehotellist }" var="hotel">
					<tr id='tr${hotel.hotelId }'>
						<td><img src="Licin01.jpg" />${hotel.hotelPhoto }</td>
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
						<td><button id="btn-modal">호텔정보수정</button></td>
						<td><button id="delBtn">삭제</button> </td>
					</tr>

				</c:forEach>
			</table>

			<!-- ===================================모달====================================== -->
			<form id="myFrm" action="manageHotelModify.do">
				<div id="container">


					<div id="lorem-ipsum"></div>
				</div>
				<div id="modal" class="modal-overlay">
					<div class="modal-window">
						<div class="title">
							<h2>호텔정보수정</h2>
						</div>
						<div class="close-area">X</div>
						<div class="content">

							ID: <input type="text" name="hotelId" id="modalId" readonly><br>
							위치: <input type="text" name="hotelLocation" id="modalLocation"><br>
							호텔명: <input type="text" name="hotelName" id="modalName" ><br>
							전화번호: <input type="text" name="hotelTel" id="modalTel"><br>
							서비스: <textarea cols="20" rows="3" name="hotelService" id="modalService"></textarea> <br>
							전망: <input type="text" name="hotelView" id="modalView"><br>
							주소: <input type="text" name="hotelAddress" id="modalAddress"><br>
							<button id="modBtn">수정</button>
						</div>
					</div>
				</div>


			</form>

			<form action="manageHotelRemove.do" method="post" id="deleteForm"></form>
			<script>
				document.querySelector('#modBtn').addEventListener('click', function (e) {
					e.preventDefault();
					let isOk = true;
					let myFrm = document.querySelector('#myFrm')
					let hotelId = document.querySelector('input[name="hotelId"]').value;
					let hotelLocation = document.querySelector('input[name="hotelLocation"]').value;
					let hotelName = document.querySelector('input[name="hotelName"]').value;
					let hotelTel = document.querySelector('input[name="hotelTel"]').value;
					let hotelService = document.querySelector('textarea[name="hotelService"]').textContent;
					let hotelView = document.querySelector('input[name="hotelView"]').value;
					let hotelAddress = document.querySelector('input[name="hotelAddress"]').value;

					myFrm.append(document.querySelector('input[name="hotelId"]'));
					myFrm.append(document.querySelector('input[name="hotelLocation"]'));
					myFrm.append(document.querySelector('input[name="hotelName"]'));
					myFrm.append(document.querySelector('input[name="hotelTel"]'));
					myFrm.append(document.querySelector('textarea[name="hotelService"]'));
					myFrm.append(document.querySelector('input[name="hotelView"]'));
					myFrm.append(document.querySelector('input[name="hotelAddress"]'));
					console.log(myFrm);

					if (isOk) {
						myFrm.submit();
					}
				})


				var acc = document.getElementsByClassName("accordion");
				var i;

				for (i = 0; i < acc.length; i++) {
					acc[i].addEventListener("click", function () {
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




				/*------------------모달---------------------*/
				const loremIpsum = document.getElementById("lorem-ipsum")
				fetch("https://baconipsum.com/api/?type=all-meat&paras=200&format=html")
					.then(response => response.text())

				const modal = document.getElementById("modal")
				const btnModal = document.getElementById("btn-modal")
				let btnModals = document.querySelectorAll('#btn-modal');
				btnModals.forEach(ele => {
					ele.addEventListener("click", e => {

						let td1 = ele.parentElement.parentElement.children[1].innerText;
						document.getElementById('modalId').value = td1;
						let td2 = ele.parentElement.parentElement.children[2].innerText;
						document.getElementById('modalLocation').value = td2;
						let td3 = ele.parentElement.parentElement.children[3].innerText;
						document.getElementById('modalName').value = td3;
						let td4 = ele.parentElement.parentElement.children[4].innerText;
						document.getElementById('modalTel').value = td4;
						let td5 = ele.parentElement.parentElement.children[5].innerText;
						document.getElementById('modalService').value = td5;
						let td6 = ele.parentElement.parentElement.children[6].innerText;
						document.getElementById('modalView').value = td6;
						let td8 = ele.parentElement.parentElement.children[8].innerText;
						document.getElementById('modalAddress').value = td8;

						modal.style.display = "flex"
					})
				})
				/*btnModal.addEventListener("click", e => {
						modal.style.display = "flex"
				})*/
				const closeBtn = modal.querySelector(".close-area")
				closeBtn.addEventListener("click", e => {
					modal.style.display = "none"
				})
				modal.addEventListener("click", e => {
					const evTarget = e.target
					if (evTarget.classList.contains("modal-overlay")) {
						modal.style.display = "none"
					}
				})
				window.addEventListener("keyup", e => {
					if (modal.style.display === "flex" && e.key === "Escape") {
						modal.style.display = "none"
					}
				})


				document.querySelector('#delBtn').addEventListener('click', function (e) {
					e.preventDefault();

					let delFrm = document.querySelector('#deleteForm');
					let input = document.createElement('input');
					input.type = 'hidden';
					input.name='hotelId'
					input.value= this.parentElement.parentElement.children[1].innerText;
					delFrm.append(input);
					// myFrm.action='manageHotelRemove.do';
					//myFrm.setAttribute('action','manageHotelRemove.do');
						delFrm.submit();
				})


			</script>
		<jsp:include page="../../../includes/footer.jsp"></jsp:include>



		