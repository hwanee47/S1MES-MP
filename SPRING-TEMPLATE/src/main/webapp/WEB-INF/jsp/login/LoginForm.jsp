<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>S1MES</title>

<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/main.css" />

<style type="text/css">
    
    .banner full{
    	background-image:url('/images/slide01.jpg');
    	background-color: green;
    }
</style>

</head>
<body>
		<!-- Header -->
		<header id="header" class="alt">
			<div class="logo"><a href="index.html">Hielo <span>by TEMPLATED</span></a></div>
			<a href="#menu">Menu</a>
		</header>

		<!-- Nav -->
		<nav id="menu">
			<ul class="links">
				<li><a href="index.html">Home</a></li>
				<li><a href="generic.html">Generic</a></li>
				<li><a href="elements.html">Elements</a></li>
			</ul>
		</nav>

		<!-- Banner -->
		<section class="banner3"> 
			 
				
				<div class="inner" >
					<header>
						<p>A free responsive web site template by Hwanee1</a></p>
						<h2>TES</h2>
						test
					</header>
					
				</div>
				
				<form name="loginForm" action="<c:url value="/loginProcess.do"/>" method="POST">
			        <div class="loginDiv" style="width:50%; margin:0 auto; ">
			        		<table class="login table">
			        		<tr><td><h5>ID </h5></td><td><input id="terst" type="text" name="id" /></td></tr>
			        		<tr><td><h5>PASSWORD</h5></td><td><input type="text" name="password" /></td><td><input type="submit" value="LOGIN" class="btn_login" onclick="fn_login()"></td></tr>
			        		</table>	
			        			
			        </div>
			    </form>
				
			
			
		</section>

		<!-- Footer -->
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

	<!-- ================================================================================================ -->

	<script type="text/javascript">
    	
    	function fn_login() {
    		document.loginForm.submit();	
    	}
    	
    </script>	
</body>
</html>