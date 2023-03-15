<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
<html lang="en" class="no-js">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
		<meta name="viewport" content="width=device-width, initial-scale=1"> 
		<title>Tab Styles Inspiration</title>
		<meta name="description" content="Tab Styles Inspiration: A small collection of styles for tabs" />
		<meta name="keywords" content="tabs, inspiration, web design, css, modern, effects, svg" />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="../favicon.ico">
		<link rel="stylesheet" type="text/css" href="resources/test_css/tabs.css" />
		<link rel="stylesheet" type="text/css" href="resources/test_css/tabstyles.css" />
		<link rel="stylesheet" type="text/css" href="resources/test_css/normalize.css" />
		
  		<script src="resources/test_js/modernizr.custom.js"></script>
	</head>
	<body>
		<svg class="hidden">
			<defs>
				<path id="tabshape" d="M80,60C34,53.5,64.417,0,0,0v60H80z"/>
			</defs>
		</svg>
		<div class="container" style="margin-top:30px">
			<!-- Top Navigation -->
			<section>
				<div class="tabs tabs-style-bar">
					<nav>
						<ul>
							<li><a href="#section-bar-1" class="icon icon-home"><span>공지사항</span></a></li>
							<li><a href="#section-bar-2" class="icon icon-box"><span>자주 묻는 질문</span></a></li>
							<li><a href="#section-bar-3" class="icon icon-display"><span>Q&A</span></a></li>
						</ul>
					</nav>
					<div class="content-wrap">
						<section id="section-bar-1"> <div id="noticePosts">
            <table class="table">
                <colgroup>
                    <col width="10%">
                    <col width="50%">
                    <col>
                    <col>
                </colgroup>
                <thead>
                    <tr>
                        <th>번호</th>
                        <th>제목</th>
                        <th>작성자</th>
                        <th>작성일</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${list}" var="post">
                        <tr>
                            <td class="center">${post.postId }</td>
                            <td>${post.postTitle}</td>
                            <td class="center">${post.userEmail}</td>
                            <td class="center">${post.postWriteDate }</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div></section>
						<section id="section-bar-2"><p>2</p></section>
						<section id="section-bar-3"><p>3</p></section>
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