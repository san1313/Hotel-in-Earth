<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
			<!DOCTYPE html>
			<html lang="en" class="no-js">

			<head>
				<meta charset="UTF-8" />
				<meta http-equiv="X-UA-Compatible" content="IE=edge">
				<meta name="viewport" content="width=device-width, initial-scale=1">
				<meta name="description" content="Tab Styles Inspiration: A small collection of styles for tabs" />
				<meta name="keywords" content="tabs, inspiration, web design, css, modern, effects, svg" />
				<meta name="author" content="Codrops" />
				<link rel="stylesheet" type="text/css"
					href="resources/fonts/posts/writeForm/font-awesome-4.2.0/css/font-awesome.min.css" />
				<link rel="stylesheet" type="text/css" href="resources/css/posts/writeForm/demo.css" />
				<link rel="stylesheet" type="text/css" href="resources/css/posts/writeForm/set2.css" />
				<link rel="stylesheet" type="text/css" href="resources/css/posts/writeForm/normalize.css" />
				<link rel="stylesheet" type="text/css" href="resources/css/posts/listForm/accordion.css" />
				<link rel="stylesheet" type="text/css" href="resources/css/posts/listForm/normalize.css" />
				<link rel="stylesheet" type="text/css" href="resources/css/posts/listForm/tabs.css" />
				<link rel="stylesheet" type="text/css" href="resources/css/posts/listForm/tabstyles.css" />
				<link rel="stylesheet" type="text/css" href="resources/css/posts/listForm/style.css" />

				<script src="resources/js/posts/listForm/modernizr.custom.js"></script>
			</head>

			<body>
				<svg class="hidden">
					<defs>
						<path id="tabshape" d="M80,60C34,53.5,64.417,0,0,0v60H80z" />
					</defs>
				</svg>
				<div class="container">
					<!-- Top Navigation -->
					<section>
						<div class="tabs tabs-style-bar">
							<nav>
								<ul>
									<li><a href="#section-bar-1"><span>공지사항</span></a></li>
									<!-- 위쪽 버튼3개 -->
									<li><a href="#section-bar-2"><span>자주 묻는 질문</span></a></li>
									<li><a href="#section-bar-3"><span>Q/A</span></a></li>
								</ul>
							</nav>
							<div class="content-wrap">
								<section id="section-bar-1">
									<!-- 공지사항 -->
									<div id="noticePosts">
										<table class="table">
											<colgroup>
												<col>
												<col width="30%">
												<col>
											</colgroup>
											<thead>
												<tr>
													<th>제목</th>
													<th>작성일</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${notices}" var="post">
													<tr>
														<td><a href="viewPost.do?pid=${post.postId }">${post.postTitle}</a></td>
														<td class="center">
															<fmt:formatDate value="${post.postWriteDate }" type="both"
																pattern="yyyy-MM-dd HH:mm:ss" />
														</td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
								</section>
								<section id="section-bar-2">
									<div id="noticePosts">
										<table class="table">
											<colgroup>
												<col>
												<col width="30%">
												<col>
											</colgroup>
											<thead>
												<tr>
													<th>제목</th>
													<th>작성일</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${faqs}" var="post">
													<tr>
														<td><a href="viewPost.do?pid=${post.postId }">${post.postTitle}</a></td>
														<td class="center">
															<fmt:formatDate value="${post.postWriteDate }" type="both"
																pattern="yyyy-MM-dd HH:mm:ss" />
														</td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
								</section>
								<section id="section-bar-3">
									<div id="noticePosts">
										<table class="table">
											<colgroup>
												<col>
												<col width="30%">
												<col>
											</colgroup>
											<thead>
												<tr>
													<th>제목</th>
													<th>작성일</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${questions}" var="post">
													<tr>
														<td><a href="viewPost.do?pid=${post.postId }">${post.postTitle}</a></td>
														<td class="center">
															<fmt:formatDate value="${post.postWriteDate }" type="both"
																pattern="yyyy-MM-dd HH:mm:ss" />
														</td>
													</tr>
												</c:forEach>
												<!-- TODO 버튼 레이아웃 지정-->
											</tbody>
										</table>
										<button class="accordion">글쓰기</button>
										<div class="panel">
											<form action="postWrite.do" method="post">
												<span class="input input--yoshiko"> <input class="input__field input__field--yoshiko"
														type="text" id="postTitle" name="title" /> <label class="input__label input__label--yoshiko"
														for="postTitle">
														<span class="input__label-content input__label-content--yoshiko" data-content="제목">제목</span>
													</label>
												</span> <br> <span class="input input--yoshiko"> <textarea
														class="input__field input__field--yoshiko" id="postContent" name="content"></textarea>
													<label class="input__label input__label--yoshiko" for="postTitle">
														<span class="input__label-content input__label-content--yoshiko" data-content="내용">내용</span>
													</label>
												</span> <br> <input type="hidden" id="postType" name="postType" value="Q"> <input type="hidden"
													id="email" name="email" value="user1@email">
												<!-- TODO 로그인시스템 만들어지면 내용 고칠것 -->
												<button type="button" class="btn" id="writeBtn">제출</button>
											</form>
										</div>
									</div>
								</section>
							</div>
							<!-- /content -->
						</div>
						<!-- /tabs -->
					</section>
				</div>

				<script src="resources/test_js/cbpFWTabs.js"></script>
				<script src="resources/js/posts/listForm/classie.js"></script>
				<script>
					(function () {

						[].slice.call(document.querySelectorAll('.tabs')).forEach(function (el) {
							new CBPFWTabs(el);
						});

					})();


					var acc = document.getElementsByClassName("accordion");
					for (let i = 0; i < acc.length; i++) {
						acc[i].addEventListener("click", function () {
							this.classList.toggle("active");
							var panel = this.nextElementSibling;
							panel.classList.toggle("activePanel")
							if (panel.style.maxHeight) {
								panel.style.maxHeight = null;
							} else {
								panel.style.maxHeight = panel.scrollHeight + "px";
							}
						});
					}

					(function () {
						// trim polyfill : https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/Trim
						if (!String.prototype.trim) {
							(function () {
								// Make sure we trim BOM and NBSP
								var rtrim = /^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g;
								String.prototype.trim = function () {
									return this.replace(rtrim, '');
								};
							})();
						}

						[].slice.call(document.querySelectorAll('input.input__field, textarea.input__field')).forEach(function (inputEl) {
							// in case the input is already filled..
							if (inputEl.value.trim() !== '') {
								classie.add(inputEl.parentNode, 'input--filled');
							}

							// events:
							inputEl.addEventListener('focus', onInputFocus);
							inputEl.addEventListener('blur', onInputBlur);
						});

						function onInputFocus(ev) {
							classie.add(ev.target.parentNode, 'input--filled');
						}

						function onInputBlur(ev) {
							if (ev.target.value.trim() === '') {
								classie.remove(ev.target.parentNode, 'input--filled');
							}
						}
					})();

					let writeBtn = document.getElementById('writeBtn').addEventListener('click', function () {
						let tbody = this.parentElement.parentElement.parentElement.firstChild
						console.log(tbody);
						/*
			
			let title = document.querySelector('#postTitle').value;
			let content = document.querySelector('#postContent').value;
			let type = document.querySelector('#postType').value;
			let email = document.querySelector('#email').value;
			if (!title || !content) {
				alert("값을 입력하세요");
				return;
			}
			fetch('postWrite.do', {
				method: 'post',
				headers: { 'Content-type': 'application/x-www-form-urlencoded' },
				body: 'title=' + title + '&content=' + content + '&type=' + type + '&email=' + email
			})
				.then(resolve => resolve.json())
				.then(result => {
					console.log(result);
					if (result.retCode == 'Success') {
						makeTr(result.post);
						initField();
					}
				})
				.catch(reject => console.error(reject))
		})

		function makeTr(post = {}) {
			let tr = document.createElement('tr');
			for (let prop in post) {
				let td = document.createElement('td');
				td.innerText = post[prop];
				tr.append(td);
			}
			let delBtn = document.createElement('button'); // <button>삭제</button>
			delBtn.innerText = '삭제';
			delBtn.addEventListener('click', function () {
				console.log(this);
				let delId = this.parentElement.parentElement.children[0].innerText;
				fetch('memberRemoveAjax.do', {
					method: 'post',
					headers: { 'Content-Type': 'application/x-www-form-urlencoded' }, // key==val&key&val
					body: 'id=' + delId
				})
					.then(resolve => resolve.json())
					.then(result => {
					})
					.catch(reject => console.log(reject));
			})
			let td = document.createElement('td');
			td.append(delBtn); // <td><button>삭제</button></td>
			tr.append(td);
			document.getElementById('postList').append(tr);
		}

		function initField() {
			document.getElementById('postTitle').value = '';
			document.getElementById('postContent').value = '';
			*/
					})
				</script>