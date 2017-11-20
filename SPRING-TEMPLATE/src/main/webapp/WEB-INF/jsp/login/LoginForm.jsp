<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>S1MES</title>

<meta name="viewport" content="width=device-width, initial-scale=1" />


<style type="text/css">
    
    
</style>
</head>
<body>
		


		<!-- Banner -->
		<section class="banner3"> 
				
				<div class="inner" >
					<header>
						<p><a>A free responsive web site template by Hwanee1</a></p>
						<h2>TESTtt</h2>
						
					</header>
					
				</div>
				
				<form name="loginForm" action="<c:url value="/loginProcess.do"/>" method="POST">
			        <div class="loginDiv" style="width:50%; margin:0 auto; ">
			        		<table class="login table">
			        		<tr><td><h5>ID </h5></td><td><input id="terst" type="text" name="id" /></td></tr>
			        		<tr><td><h5>PASSWORD</h5></td><td><input type="text" name="password" /></td><td><input type="submit" value="LOGIN" class="btn_login" onclick="fn_login()"></td></tr>
			        		</table>	
			        </div>
			        <input type="hidden" name="message" value="${message}" />
			    </form>
			
		</section>

		

	<!-- ================================================================================================ -->

	<script type="text/javascript">
    	
		
	
	
    	function fn_login() {
    		
    		if(document.loginForm.id.value == "")
    		{
    			alert("아이디를 입력하세요.");
    			return false;		
    		}else if(document.loginForm.password.value == ""){
    			alert("비밀번호를 입력하세요.");
    			return false;
    		}else{
    			document.loginForm.submit();
    		}
    	}
    	
    	
    	
    	
    </script>	
</body>
</html>