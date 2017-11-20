<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib prefix="page" uri="http://www.opensymphony.com/sitemesh/page"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
 <link rel="stylesheet" href="<%=request.getContextPath()%>/css/main.css" /> 
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>

<style>
	/* Clearing the Float */
	#footer{
		clear:both;
	}
</style>

<script>
	$(document).ready(function(){
		$(".btn").click(function() {
			$("#menu,.page_cover,html").addClass("open");
			window.location.hash = "#open";
		});
	
		window.onhashchange = function() {
		  if (location.hash != "#open") {
		    $("#menu,.page_cover,html").removeClass("open");
		  }
		};
	});
</script>

<title><decorator:title default="JLStory" /></title>
<decorator:head />


</head>
<body>
	<!-- HEADER -->
	<header style="width: 100%; text-align:center">
		<h2>This is header</h2>
	</header>
	
	<!-- MENU -->	
	<div class="btn">

	</div>
	<div onclick="history.back();" class="page_cover"></div>
	<div id="menu">
		
	  <div onclick="history.back();" class="close"></div>
	  <div class="box_aside">
	  	<h1 class="tit_aside">CATEGORY</h1>	
	  
	  	<div class="category">
			<div class="list_cate">
				<ul>
			  		<li><a href="#" >표준품</a></li>
					<li><a href="#" >Facebook</a></li>
					<li><a href="#" >Instagram</a></li>
					<li><a href="#" >Email</a></li>
				</ul>
			</div>
		</div>
	  </div>
	</div>
	
	
	<!-- CONTENT -->
	<decorator:body></decorator:body>

	<!-- FOOTER -->
	<footer id="footer">
		<div class="container">
			<ul class="icons">
				<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
				<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
				<li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
				<li><a href="#" class="icon fa-envelope-o"><span class="label">Email</span></a></li>
			</ul> 
		</div>
		<div class="copyright">
			&copy; Untitled. All rights reserved.
		</div>
	</footer>

	
</body>
</html>


