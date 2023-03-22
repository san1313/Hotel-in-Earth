<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    <style>
		#sidebarToggle{
		        background-color:skyblue;
		    border-style: none;
		        color:black
		    }

    </style>
  <!-- Page content wrapper-->
            <div id="page-content-wrapper">
                <!-- Top navigation-->
                <nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom">
                    <div class="container-fluid">
                        <button class="btn btn-primary" id="sidebarToggle">더보기</button><h1>&emsp; 관리자 페이지</h1>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav ms-auto mt-2 mt-lg-0">
                                
                                <%
                                String id = (String) session.getAttribute("id");
                                %>
                                <%if(id ==null){ %>
                                <li class="nav-item"><a class="nav-link" href="loginForm.do">로그인</a></li>
                                <%} else{%>
                                <li class="nav-item"><a class="nav-link" href="logout.do">로그아웃</a></li>
                                <%} %>
                                <li class="nav-item dropdown">
                                    <%if(id!=null){%>
                                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" >welcome[ <%=id %> ]</a>
                                    <div class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="#!">Action</a>
                                        <a class="dropdown-item" href="#!">Another action</a>
                                        <div class="dropdown-divider"></div>
                                        <a class="dropdown-item" href="#!">Something else here</a>
                                    </div>
                                    <%} else{ %>
                                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" >welcome[ guest ]</a>
                                    <%} %>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>