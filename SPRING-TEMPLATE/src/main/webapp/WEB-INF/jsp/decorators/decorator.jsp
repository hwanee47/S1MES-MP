<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib prefix="page" uri="http://www.opensymphony.com/sitemesh/page"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">

 <!-- css는 적는 순서대로 덮어쓰기때문에 bootstrap css를 먼저 적어주었다. -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">	 
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/main.css" /> 
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>

<style>
	/* Clearing the Float */
	#footer{
		clear:both;
	}
</style>

<script>
	function fn_main_headPageMove(menuNo, url){
	    document.selectOne.menuNo.value=menuNo;
	    document.selectOne.link.value=url;
	    document.selectOne.action = "<c:url value='/s1mesPageLink.do'/>";
	    //alert(document.selectOne.action);
	    document.selectOne.submit();
	}

	$(document).ready(function(){
		$(".btn_menu").click(function() {
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

<form name="selectOne" action="#LINK">
<input name="menuNo" type="hidden" />
<input name="link" type="hidden" />
</form>

<body>
	<!-- HEADER -->
	<header id="header">
		<h2>This is header</h2>
	</header>
	
	<!-- MENU -->	
	<div class="btn_menu">

	</div>
	<div onclick="history.back();" class="page_cover"></div>
	<div id="menu">
		
	  <div onclick="history.back();" class="close"></div>
	  <div class="box_aside">
	  	<h1 class="tit_aside">CATEGORY</h1>	
	  
	  	<div class="category">
			<div class="list_cate">
				<ul>
			  		<li><a href="#LINK" onclick="fn_main_headPageMove('21', 'login/LoginSuccess')">표준품</a></li>
					<li><a href="#LINK" onclick="fn_main_headPageMove('21', 'rord/rordProgress')">수주진행상황</a></li>
					<li><a href="#LINK" >Instagram</a></li>
					<li><a href="#LINK" >Email</a></li>
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


