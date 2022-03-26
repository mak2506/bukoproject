<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>

    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://kit.fontawesome.com/33f3254fcd.js" crossorigin="anonymous"></script>
	<style>

#logo{
    text-decoration: none;
    color: #F9A825;
    font-size: 10vh;
    font-family: forte;
    text-shadow: 2px 2px#784212;
}

.icon-bar{
    background: black;
}

.icon{
	margin-top: 5px;
}
#icon li a{
    color: white;
    font-size: 5vh;
}
#icon li a:hover{
    background-color: #17A589 ;
    border-radius: 10%;
}
#icon li a:visited{
    background-color: #17A589 ;
}

	</style>

</head>
<body>
	<!-- header section -->
	<nav class="navbar navbar-expand-lg" style="background-color: #148F77;">
	  <a class="navbar-brand" href="/buko" id="logo">BUKO</a>
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	
	  <div class="collapse navbar-collapse" id="navbarSupportedContent">
	    <div class="icon">
                <ul class="nav navbar-nav navbar-right" id="icon">
                   <!--  <li><a href="#"><span class="glyphicon glyphicon-map-marker"></span></a></li> -->
                    <li><a href="cart.htm"><span class="fa">&#xf07a;</span></a></li>
                    <li data-toggle="modal" data-target="#loginmodal" id="lgin"><a href="/buko/uploader/uploaderlogin.jsp">Login</a></li>
                      <li data-toggle="modal" data-target="#loginmodal" id="lgout" style="opacity: 0; display: none;"><a href="/buko/Logout">Logout</a></li>
                </ul>
               </div>
	  </div>
	</nav>
	
	
	
     <!-- <header class="header" data-spy="affix" data-offset-top="205">
        <div class="mainhead">
         <nav class="navbar navbar-style">
            <div class="container">
                <div class="navbar-header">
                   <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#nav">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                   </button>
                    <a href="/buko/home/index.jsp" id="logo">BUKO</a>
                </div>
                
            </div>
          </nav>
        </div>
    </header> -->
    <!-- header end -->
    
    <%

String cid=(String)session.getAttribute("userkey");

if(cid!=null)
{
	System.out.println("Hello user");
%>
<script>
	function update()
	{
	 let lgin=document.getElementById("lgin");
	 lgin.setAttribute("style", "opacity: 0; display: none;");
	 let lgout=document.getElementById("lgout");
	 lgout.setAttribute("style", "opacity: 1; display:inline;");
	}
	update();
</script>
<%} %>

</body>
</html>