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
$(document).ready(function(){
	
	/* 수주번호-행번입력후 조회 */
	$('#execute').click(function(){
		 $.ajax({
			 headers: { 
			        'Accept': 'application/json',
			        'Content-Type': 'application/json' 
			    },
            url:'./getInvStmtInfo.do',
            type:'POST',
            /* data:{"rordNum":$('#text_rord_num').val(), "rordSno":$('#text_rord_sno').val()}, */
             data:JSON.stringify({"rordNum":$('#text_rord_num').val(), "rordSno":$('#text_rord_sno').val()}),
            success:function(data){
              	alert("성공");
            },
            error:function(data){
            	alert("잠시 후 다시 시도해주세요.");
            }
        })
	})	
})

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
			    	<input type="text" class="form-control" id="text_rord_num" placeholder=" ex) S17010001">
			  	</li>
			  	<li>
			    	<h5>행번</h5>
			    </li>
			    <li>
			    	<input type="email" class="form-control" id="text_rord_sno" placeholder="ex) 01">
			  	</li>
			  	
			  	<li>
			    	<button type="button" class="btn btn-danger" id="execute">Send invitaion</button>
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
		<div class="white-box">
		<div class="table-stmtMaster">
			<table class="table">
				<thead>
					<tr>
						<th colspan="3">입고</th>
						<th colspan="3">출하의뢰</th>
						<th colspan="3">상차</th>
						<th colspan="3">송장</th>
						<th colspan="3">출고</th>
					</tr>
				</thead>
				<tr>
					<!-- 입고 -->
					<td >S17010002</td>
					<td >02</td>
					<td >02</td>
					
					<!-- 출하의뢰 -->
					<td >S17010002</td>
					<td >02</td>
					<td >02</td>
					
					<!-- 상차 -->
					<td >S17010002</td>
					<td >02</td>
					<td >02</td>
					
					<!-- 송장 -->
					<td >S17010002</td>
					<td >02</td>
					<td >02</td>
					
					<!-- 출고 -->
					<td >S17010002</td>
					<td >02</td>
					<td >02</td>
				</tr>
			</table>
		</div>
		</div>
	</div>
	
	<div class="row3-stmt">
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
	
	<div class="row4-stmt">
		
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