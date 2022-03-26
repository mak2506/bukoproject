<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@page import="java.sql.*, buko.dbtask.*"%>
   <%
  String id= request.getParameter("book_id");
   %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="index.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<%
Connection con=DBConnection.createConnection();
String strsql="select * from book_details where book_id=?";
PreparedStatement ps=con.prepareStatement(strsql);
ps.setString(1, id);
ResultSet rs=ps.executeQuery();
rs.next();
%>


<div  class="container-fluid">
	<!-- header file -->
	 <jsp:include page="header.jsp"></jsp:include>
	 <!-- navbar file -->
	<jsp:include page="navbar.jsp"></jsp:include>
	
	<div class="row">
	
	<div class="col-md-6">
	<img class="card-img-top img-fluid w-100 m-4" src="/buko/bookcovers/<%=rs.getString("image") %>" alt="Card image" style="height: 100vh;">
	</div>
	
	<div class="col-md-6">
	
	 <div class="desc">
                    <h2><%=rs.getString("book_name") %></h2>
                    <h4>by <a href="#"><%=rs.getString("author") %></a> (Author)</h4>
                    <span class="fa fa-star checked"></span>
                    <span class="fa fa-star checked"></span>
                    <span class="fa fa-star checked"></span>
                    <span class="fa fa-star"></span>
                    <span class="fa fa-star"></span>
                    <h3><%=rs.getInt("price") %> Price INR <del>Original price</del> <span style="color: green;">(discount%off)</span></h3>
                    <p style="color: #873600;">Availibility</p>
                    <label for="qnty">Quantity</label><select name="qnty">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">2</option>
                            <option value="4">3</option>
                            <option value="5">5</option>
                    </select><br>
                    <a href="#"><button type="button" value="cart" id="cartbtn">Add to Cart</button></a>&nbsp;&nbsp;&nbsp;&nbsp;
                    <button type="button" value="buy" id="buybtn">Buy Now</button>
                    <h3>Book Description</h3>
                    <p><%=rs.getString("description") %></p>
                </div>
                
            </div>
            
	</div>
	
	</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>