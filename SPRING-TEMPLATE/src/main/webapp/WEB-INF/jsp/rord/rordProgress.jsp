<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/rordProgress.css" /> 
<title>Insert title here</title>
<style>

</style>

<script>

</script>


</head>
<body>
	<div class="bg-title">
		<div class="page-title">
			<h4>PAGE TITLE</h4>
		</div>
		
		<div class="div-search">
			<ul>
				<li>
			    	<h5>수주번호</h5>
			    </li>
			    <li>
			    	<input type="text" class="form-control" id="exampleInputName2" placeholder=" ex) S17010001">
			  	</li>
			  	<li>
			    	<h5>행번</h5>
			    </li>
			    <li>
			    	<input type="email" class="form-control" id="exampleInputEmail2" placeholder="ex) 01">
			  	</li>
			  	
			  	<li>
			    	<button type="button" class="btn btn-danger">Send invitaion</button>
			  	</li>
		  	</ul>
		</div>
	</div>
	
	<div class="row1-rord_status">
		<div class="white-box">
			<div class="rordNum-Sno">
				<ul>
					<li><h5>S17010002 - 02</h5></li>
				</ul>
			</div>
			
			<div class="progress">
				<ul>
					<li>
						  <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40"
						  aria-valuemin="0" aria-valuemax="100" style="width:40%">
						    40% Complete (success)
						  </div>
				  	</li>
				  	<li>
				  		
				  	</li>
			  	</ul>
			</div>
						
		</div>
	</div>
	
	<div class="row2-stmt">
		<div class="col-inWar">
			<div class="col-head-inWarStmt">
				
			</div>
			<div class="white-box">
				입고
			</div>
		</div>
		
		<div class="col-taout">
			<div class="col-head-taoutStmt">
				
			</div>
			<div class="white-box">
				출고
			</div>
		</div>
		
		
	</div>
	
	<div class="row3-stmt">
		
		<div class="col-shipReq">
			<div class="col-head-shipReqStmt">
				
			</div>
			<div class="white-box">
				출하
			</div>
		</div>
	</div>
</body>
</html>