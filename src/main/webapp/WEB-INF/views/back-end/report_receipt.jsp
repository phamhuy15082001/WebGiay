<!-- sử dụng tiếng việt -->
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>report_receipt</title>
  <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AIRPORT HOTEL</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/responsive.css">
    <link rel="stylesheet" href="css/all.css">
    <script src="js/jquery-3.5.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/shop.js"></script>
    </head>
    <body>

        <div class="page-container">	

            <div class="left-content">

                <div class="mother-grid-inner">

                    <jsp:include page="header.jsp"></jsp:include>

                        <div class="inner-block">
                            <div class="chit-chat-layer1">
                                <div class="col-md-6 chit-chat-layer1-left">
                                    <div class="glocy-chart">
                                        <div class="span-2c">  
                                            <h3 class="tlt">Line Chart</h3>
                                            <canvas id="viewchart1" height="300" width="400" style="width: 400px; height: 300px;"></canvas>
                                            <script>
                                                var lineChartData = {
                                                    labels: [<c:forEach var="item" items="${listReceipt}">'${item.time}',</c:forEach>],
                                                    datasets: [
                                                        {
                                                            fillColor: "#FC8213",
                                                            data: [<c:forEach var="item" items="${listReceipt}">${item.value},</c:forEach>]
                                                        }
                                                    ]

                                                };
                                                new Chart(document.getElementById("viewchart1").getContext("2d")).Line(lineChartData);

                                            </script>
                                        </div> 			  		   			
                                    </div>
                                </div>
                                <div class="col-md-6 chit-chat-layer1-rit">    	
                                    <div class="glocy-chart">
                                        <div class="span-2c">  
                                            <h3 class="tlt">Bar Chart</h3>
                                            <canvas id="bar" height="300" width="400" style="width: 400px; height: 300px;"></canvas>
                                            <script>
                                                var barChartData = {
                                                    labels: [<c:forEach var="item" items="${listReceipt}">'${item.time}',</c:forEach>],
                                                    datasets: [
                                                        {
                                                            fillColor: "#FC8213",
                                                            data: [<c:forEach var="item" items="${listReceipt}">${item.value},</c:forEach>]
                                                        }
                                                    ]

                                                };
                                                new Chart(document.getElementById("bar").getContext("2d")).Bar(barChartData);

                                            </script>
                                        </div> 			  		   			
                                    </div>
                                </div>
                                <div class="clearfix"> </div>
                            </div>

                        </div>

                    <jsp:include page="footer.jsp"></jsp:include>

                    </div>

                </div>

            <jsp:include page="navigation.jsp"></jsp:include>

        </div>

    </body>
</html>
