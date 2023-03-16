<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
        <!DOCTYPE html>
<html lang="en" class="no-js">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
		<meta name="viewport" content="width=device-width, initial-scale=1"> 
		<meta name="description" content="Tab Styles Inspiration: A small collection of styles for tabs" />
		<meta name="keywords" content="tabs, inspiration, web design, css, modern, effects, svg" />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="../favicon.ico">
		<link rel="stylesheet" type="text/css" href="resources/css/posts/normalize.css" />
		<link rel="stylesheet" type="text/css" href="resources/css/posts/tabs.css" />
		<link rel="stylesheet" type="text/css" href="resources/css/posts/tabstyles.css" />
		<link rel="stylesheet" type="text/css" href="resources/css/posts/style.css" />
  		<script src="resources/js/posts/modernizr.custom.js"></script>
	</head>
	<body>
		<svg class="hidden">
			<defs>
				<path id="tabshape" d="M80,60C34,53.5,64.417,0,0,0v60H80z"/>
			</defs>
		</svg>
		<div class="container">
			<!-- Top Navigation -->
			<section>
				<div class="tabs tabs-style-bar">
					<nav>
						<ul>
							<li><a href="#section-bar-1"><span>공지사항</span></a></li>		<!-- 위쪽 버튼3개 -->
							<li><a href="#section-bar-2"><span>자주 묻는 질문</span></a></li>
							<li><a href="#section-bar-3"><span>Q/A</span></a></li>
						</ul>
					</nav>
					<div class="content-wrap">
						<section id="section-bar-1">	<!-- 공지사항 -->
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
                    <c:forEach items="${list1}" var="post">
                        <tr>
                            <td>${post.postTitle}</td>
                            <td class="center"><fmt:formatDate value="${post.postWriteDate }" type="both" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        </section>
						<section id="section-bar-2"></section>
						<section id="section-bar-3"></section>
					</div><!-- /content -->
				</div><!-- /tabs -->
			</section>
        </div>
        
        <script src="resources/test_js/cbpFWTabs.js"></script>
		<script>
			(function() {

				[].slice.call( document.querySelectorAll( '.tabs' ) ).forEach( function( el ) {
					new CBPFWTabs( el );
				});

			})();
		</script>