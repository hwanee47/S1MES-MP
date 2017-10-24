<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>S1MES</title>
<link href="<c:url value='/'/>css/common.css" rel="stylesheet" type="text/css" >
<link href="<c:url value='/'/>css/login.css" rel="stylesheet" type="text/css" >
<script type="text/javascript">
	function actionLogin(){
		if(document.loginForm.id.value == "")
		{
			alert("아이디를 입력하세요.");
			return;		
		}else if(document.loginForm.password.value == ""){
			alert("비밀번호를 입력하세요.");
			return;
		}else{
			document.loginForm.action="<c:url value='/loginProcess.do'/>";
			document.loginForm.submit();
		}
	}
	
	function setCookie (name, value, expires) {
	    document.cookie = name + "=" + escape (value) + "; path=/; expires=" + expires.toGMTString();
	}

	function getCookie(Name) {
	    var search = Name + "="
	    if (document.cookie.length > 0) { // 쿠키가 설정되어 있다면
	        offset = document.cookie.indexOf(search)
	        if (offset != -1) { // 쿠키가 존재하면
	            offset += search.length
	            // set index of beginning of value
	            end = document.cookie.indexOf(";", offset)
	            // 쿠키 값의 마지막 위치 인덱스 번호 설정
	            if (end == -1)
	                end = document.cookie.length
	            return unescape(document.cookie.substring(offset, end))
	        }
	    }
	    return "";
	}

	function saveid(form) {
	    var expdate = new Date();
	    // 기본적으로 30일동안 기억하게 함. 일수를 조절하려면 * 30에서 숫자를 조절하면 됨
	    if (form.checkId.checked)
	        expdate.setTime(expdate.getTime() + 1000 * 3600 * 24 * 30); // 30일
	    else
	        expdate.setTime(expdate.getTime() - 1); // 쿠키 삭제조건
	    setCookie("saveid", form.id.value, expdate);
	}

	function getid(form) {
	    form.checkId.checked = ((form.id.value = getCookie("saveid")) != "");
	}
	
	function fnInit(){
		
		var message = document.loginForm.message.value;
	    if (message != "") {
	        alert(message);
	    }
	    
	    getid(document.loginForm);
	}

</script>
</head>
<body onload="fnInit();">
<h3>S1MES</h3>
<!-- 전체 레이어 시작 -->
<div id="wrap">
	<!-- header 시작 -->
	<div id="header_mainsize"></div>
	<div id="topnavi"></div>
	<!-- //header 끝 -->
    <!-- container 시작 -->
	<div id="container">
		<!-- 좌측메뉴 시작 -->
        <div id="leftmenu"><c:import url="/s1mesPageLink.do?link=main/inc/EgovIncLeftmenu" /></div>
        <!-- //좌측메뉴 끝 -->
	<form:form name="loginForm" method="post">
		<table>
			<tr>
				<td><label for="id"><img alt="login" src="<c:url value='/'/>images/login/img_idtext.gif" /></label></td>
				<td><input type="text" class="input_style" title="아이디를 입력하세요." id="id" name="id" maxlength="10"/></td>
			</tr>
			<tr>
				<td><label for="password"><img alt="password" src="<c:url value='/'/>images/login/img_pwtext.gif" /></label></td>
				<td> <input type="password" class="input_style" maxlength="25" title="비밀번호를 입력하세요." id="password" name="password" 
	                                               onkeydown="javascript:if (event.keyCode == 13) { actionLogin();}"/></td>
	            <td><input type="checkbox" name="checkId" onclick="javascript:saveid(this.form);" id="checkId" /><label for="checkId">ID저장</label></td>
			</tr>
			
	        <tr>
	            <td colspan="3" align="right" >
	               <input type="image" alt="로그인 버튼" class="btn_style" onclick="javascript:actionLogin()" src="<c:url value='/'/>images/login/btn_login.gif"  />
	            </td>
	        </tr>
		</table>
		<input type="hidden" name="message" value="${message}" />
	</form:form>
	</div>
</div>
</body>
</html>