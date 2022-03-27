<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@page import="java.sql.*, buko.dbtask.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Buko</title>

<link rel="stylesheet" href="index.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">


<!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> -->
<script src="https://kit.fontawesome.com/33f3254fcd.js" crossorigin="anonymous"></script>
</head>
<body>

<%
Connection con=DBConnection.createConnection();
String strsql="select * from book_details";
PreparedStatement ps=con.prepareStatement(strsql);
ResultSet rs=ps.executeQuery();
%>


<div  class="container-fluid">
	<!-- header file -->
	 <jsp:include page="header.jsp"></jsp:include>
	 <!-- navbar file -->
	<jsp:include page="navbar.jsp"></jsp:include>
		
		<!-- Carousel -->
    <div id="mycarousel"  class="carousel slide" data-ride="carousel">
                
        <!-- INDICATORS -->
        <ol class="carousel-indicators">
            <li data-target="#mycarousel" data-slide-to="0" class="active"></li>
            <li data-target="#mycarousel" data-slide-to="1"></li>
            <li data-target="#mycarousel" data-slide-to="2"></li>
        </ol>
        <!-- WRAPPER FOR SLIDES -->
        <div class="carousel-inner">
            <div class="item active">
                <img src="/buko/images/carousal/carousel.png">
            </div>
            <div class="item">
                <img src="/buko/images/carousal/seriescarousel.png">
            </div>
            <div class="item">
                <img src="/buko/images/carousal/authorcaro.png">
            </div>
            
        </div>
        <!-- CAROUSEL CONTROLS LEFT AND RIGHT -->
        <a class="left carousel-control" href="#mycarousel" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#mycarousel" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
            <span class="sr-only">Next</span>
        </a>
    
    </div>
    <!--carousel end-->
    
    
    <div class="d-flex flex-wrap justify-content-around p-2">
    <%
    while(rs.next())
    {
    	%>
    	<div class="card m-2" style="width: 22%">
	  <img class="card-img-top img-fluid w-100" src="/buko/bookcovers/<%=rs.getString("image") %>" alt="Card image" style="height: 40vh;">
	  <div class="card-body">
	     <h4 class="card-title"><%=rs.getString("book_name") %></h4>
		    <p class="card-text"><span><%=rs.getString("price") %></span></p>
		    <a href="home/productdetails.jsp?book_id=<%=rs.getString("book_id") %>" class="btn btn-primary">See Details</a>
	  </div>
	</div>
    	<%
    }
    %>
	</div>
	
	 <!-- footer file -->
	<jsp:include page="footer.jsp"></jsp:include>
		
	
	
</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>