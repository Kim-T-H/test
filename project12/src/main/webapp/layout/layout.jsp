<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="path" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><decorator:title></decorator:title></title>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="http://cdn.ckeditor.com/4.5.7/standard/ckeditor.js"></script>
<decorator:head></decorator:head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="${path}/css/main.css">
</head>
<body>
<header>
		<div class="logo">Logo</div>
		<nav>
			<ul>
				<li><a href="#"><i class="fa fa-envelope"></i></a></li>
				<li><a href="#"><i class="fa fa-bell"></i></a></li>
				<li class="sub-menu"><a href="#"><i class="fa fa-user-circle"></i></a>
					<ul id="final">
						<li><a href="#">회원정보 수정</a></li>
						<li><a href="#">My Portfolio</a></li>
						<li><a href="${path}/til/mytil.dev">My TIL</a></li>
						<li><a href="#">나의 활동</a></li>
						<li><a href="#">로그아웃</a></li>
					</ul>
				</li>
			</ul>
		</nav>
		<nav>
			<ul class="nav-menu">
				<li class="menu-li"><a href="${path}/til/main.dev">TIL</a></li>
				<li class="sub-menu menu-li"><a href="#">Community</a>
					<ul>
						<li><a href="#">Q&A게시판</a></li>
						<li><a href="#">자유게시판</a></li>
					</ul></li>
				<li class="sub-menu menu-li"><a href="#">Co-Working</a>
					<ul>
						<li><a href="#">Study/Project</a></li>
						<li><a href="${path}/group/main.dev">My Group</a></li>
					</ul>
				</li>
			</ul>
		</nav>
	</header>
	
	<div class="main">
		<decorator:body></decorator:body>
	</div>
</body>
</html>