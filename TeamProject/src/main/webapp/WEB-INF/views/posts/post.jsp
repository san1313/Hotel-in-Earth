<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
			<!DOCTYPE html>
			<html>

			<head>
				<meta charset="UTF-8">
				<title></title>
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
				<style>
					th {
						font-size: 1.5em;
					}

					th:first-child {
						text-align: left !important;
						padding-left: 30px !important;
					}

					td {
						font-size: 1.3em;
					}

					#container {
						width: 60%;
						margin: 0 auto;
					}

					.postContent {
						height: 400px;
						vertical-align: top !important;
						background-color: #f9f9f9;
						padding: 30px !important;
					}

					#noticePosts {
						text-align: center;
					}

					.btn {
						margin-bottom: 20px;
						font-family: 'Raleway', Arial, sans-serif;
						font-weight: 700;
						line-height: 25px;
						background-color: #fff;
						text-align: center;
						text-decoration: none;
						color: #252525;
						border-radius: 4px;
						box-shadow: 0 1px 2px rgba(0, 0, 0, 0.2);
						transition: all 0.3s ease;
					}

					.btn:hover {
						color: #fff;
						background-color: #2cc185;
					}

					#respMod,
					#respDel,
					#respMod2 {
						margin-bottom: 0;
						margin-right: 5px;
					}

					#responseBtnBox {
						text-align: right !important;
					}
				</style>
			</head>

			<body>
				<div id="container">
					<section id="section-bar-1">
						<div id="noticePosts">
							<table class="table">
								<colgroup>
									<col>
									<col width="30%">
									<col>
								</colgroup>
								<thead>
									<tr>
										<th id="postTitleBox">${post.postTitle}</th>
										<th>
											<fmt:formatDate value="${post.postWriteDate }" type="both" pattern="yyyy-MM-dd HH:mm:ss" />
										</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td colspan="2" class="postContent" id="postContentBox">${post.postContent}</td>
									</tr>
									<c:if test="${postResponse != null }">
										<tr>
											<th colspan="1">답변입니다.</th>
											<th id="responseBtnBox">
												<c:if test="${userVO.userAuth == 'M' }">
													<button type="button" id="respMod" class="btn">수정</button><button type="button" id="respMod2"
														class="btn" style="display:none">수정완료</button><button type="button" class="btn"
														id="respDel" onclick="location.href='responseDelete.do?rid=${postResponse.postId}&pid=${post.postId }'">삭제</button>
												</c:if>
											</th>
										</tr>
										<tr>
											<td colspan="2" class="postContent" id="postResponseContent">${postResponse.postContent }</td>
										</tr>
									</c:if>
								</tbody>
							</table>
							<c:if test="${userVO.userAuth == 'M' && postResponse == null && post.postType == 'Q'}">
								<button class="accordion">글쓰기</button>
								<div class="panel">
									<form action="postWriteNotAjax.do" method="post">
										<span class="input input--yoshiko" style="display:none"> <input
												class="input__field input__field--yoshiko" type="text" id="postTitle" name="title"
												value="Response" /> <label class="input__label input__label--yoshiko" for="postTitle">
												<span class="input__label-content input__label-content--yoshiko" data-content="제목">제목</span>
											</label>
										</span> <br> <span class="input input--yoshiko"> <textarea
												class="input__field input__field--yoshiko" id="postContent" name="content"></textarea>
											<label class="input__label input__label--yoshiko" for="postContent">
												<span class="input__label-content input__label-content--yoshiko" data-content="내용">내용</span>
											</label>
										</span>
										<br>
										<input type="hidden" id="postType" name="type" value="Q">
										<input type="hidden" id="email" name="email" value="${email }">
										<input type="hidden" id="postNextId" name="postNextId" value="${postNextId }">
										<input type="hidden" id="postRequestId" name="postRequestId" value="${post.postId }">
										<button type="submit" class="btn" id="writeBtn">제출</button>
									</form>
								</div>
							</c:if>
							<button type="button" class="btn" onclick="location.href='postList.do'">목록으로</button>
							<c:if test="${userVO.userAuth == 'M' || userVO.userEmail == post.userEmail }">
								<button type="button" class="btn" id="modifyBtn">수정</button>
								<button type="button" class="btn" id="modifyBtn2" style="display:none">수정완료</button>
								<button type="button" class="btn" onclick="location.href='postRemove.do?pid=${post.postId}'">삭제</button>
							</c:if>

						</div>
					</section>
				</div>
				<form id="modFrm" action="postModify.do" method="post" style="display:none">

				</form>
				<script>

				</script>
			</body>

			</html>