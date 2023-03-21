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
						width: 70%;
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
										<th>${post.postTitle}</th>
										<th>
											<fmt:formatDate value="${post.postWriteDate }" type="both" pattern="yyyy-MM-dd HH:mm:ss" />
										</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td colspan="2" class="postContent">${post.postContent}</td>
									</tr>
										<c:if test="${postResponse != null }">
										<tr><th colspan="2">답변입니다.</th></tr>
										<tr>
										<td colspan="2" class="postContent">${postResponse.postContent }</td>
										</tr>
										</c:if>
								</tbody>
							</table>
							<button type="button" class="btn" onclick="location.href='postList.do'">목록으로</button>
						</div>
					</section>
				</div>
			</body>

			</html>