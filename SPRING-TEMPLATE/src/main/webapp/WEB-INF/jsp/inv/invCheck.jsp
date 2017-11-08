<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>

<style>
	
	/* class에 body라고 표현된 모든것에 적용. */
	[class*="body"]{
		float:left;
	}
	
	
	/* For Desktop. */
	.body-1 chart{
		width:30%;
	}
	
	.body-2 chart{
		width:50%;
	}

	
	.body-3 {
	    background-color: #33b5e5;
	    padding: 15px;
	    color: #ffffff;
	    text-align: center;
	    font-size: 14px;
	    box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
	}
	
	.body-3 > h2{
		color: #ffffff;
		
	}
	
	/* For Mobile. */
	@media only screen and (max-width: 768px) {
	    /* For mobile phones: */
	    #canvas{
	    	width:100%;
	    
	    }
	    
		/* [class*="body"]{
			width:100%; 
		} */
	}
	
	/* Clearing the Float */
	#myChart{
		clear:both;
	}
	

</style>

</head>


<body>
<div class="body-1 chart">
<canvas id="myChart" width="300" height="400"></canvas>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
	
	
	<script>
	new Chart(document.getElementById("myChart"),
			{
				"type":"bar",
				"data":{
					"labels":["표준품","February","March","April","May","June","TEST"]
					,"datasets":[{"label":"My First Dataset"
					,"data":['${STANDARD_PRODUCT_INV}',20000,30000,40000,50000,35000,10000]
					,"fill":false
					,"backgroundColor":["rgba(255, 99, 132, 0.2)","rgba(255, 159, 64, 0.2)","rgba(255, 205, 86, 0.2)","rgba(75, 192, 192, 0.2)","rgba(54, 162, 235, 0.2)","rgba(153, 102, 255, 0.2)","rgba(201, 203, 207, 0.2)"],"borderColor":["rgb(255, 99, 132)","rgb(255, 159, 64)","rgb(255, 205, 86)","rgb(75, 192, 192)","rgb(54, 162, 235)","rgb(153, 102, 255)","rgb(201, 203, 207)"]
					,"borderWidth":1}]
				},
				"options":{"scales":{"yAxes":[{"ticks":{"beginAtZero":true}}]}}
			}
	);
	
	
	
	</script>
</div>



<div class="body-3 aside">
<h2>What?</h2>
<p>Chania is a city on the island of Crete.</p>
<h2>Where?</h2>
<p>Crete is a Greek island in the Mediterranean Sea.</p>
<h2>How?</h2>
<p>You can reach Chania airport from all over Europe.</p>
</div>


</body>
</html>