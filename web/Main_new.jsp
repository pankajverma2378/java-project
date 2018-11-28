<%-- 
    Document   : Main_new
    Created on : Nov 19, 2018, 9:52:08 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Quikr clone</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  <style>
  div.gallery {
    margin: 5px;
    border: 1px solid #ccc;
    float: left;
    width: 250px;
	height : 300px;
}

div.gallery:hover {
    border: 1px solid #777;
}

div.gallery img {
    width: 100%;
    height: auto;
}

div.desc {
    padding: 15px;
    text-align: center;
}
div.spacing {
	padding-top: 50px;
    padding-right: 150px;
    padding-bottom: 50px;
	}
div.container
	{
	border-top: 1px solid black;
	border-right: 1px solid black;
	float: left;
        width: 150px;
        padding: 2px;
        height: 100%; 
        transition: font-size 0.3s ease;
	}
  </style>
  
</head>
<body>
     <%
        String username = "";
      HttpSession ss = request.getSession();
      username = (String)session.getAttribute("uname");
        %>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
  
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Quikr</a>
    </div>
	
    <ul class="nav navbar-nav">
        <li class="active"><a href="Main_new.jsp">Home</a></li>
      <li><a href="sell_list.html">Sell</a></li>
      <li><a href="purchase.jsp">Purchase</a></li>
    </ul>
	
	<form class="navbar-form navbar-left" action="/action_page.php" method="post">
    <div class="form-group">
    <input type="text" class="form-control" placeholder="Search" name="search">
	</div>
	<button type="submit" class="btn btn-default">Submit</button>
	</form>
	
	<ul class="nav navbar-nav navbar-right">
    <li><a href="user_profile.jsp"><span class="glyphicon glyphicon-log-in"></span> <%=username%></a></li>
     <li>&nbsp<button class="btn navbar-btn"><a href="passrecovery.html">Update Password</a></button></li>
    <li>&nbsp<button class="btn navbar-btn"><a href="sell_list.html">Post Free Ad</a></button></li>
     <li>&nbsp<button class="btn navbar-btn"><a href="logoutservlet">Logout</a></button>
	</ul>
  </div>
</nav>
  <div class="spacing">
  
    <div class = "container">
  <h4><a href="furniture.jsp">-Furniture & Decor</a></h4>
 <hr>
 <h4><a href="electronic.jsp">-Appliances,ACs</a></h4>
 <hr>
 <h4><a href="sell_list.html">-JOBS</a></h4>
 <hr>
 <h4><a href="used.jsp">-Cars</a></h4>
 <hr>
 <h4><a href="electronic.jsp">-Electronics</a></h4>
 <hr>
 <h4><a href="electronic.jsp">-Mobiles</a></h4>
 <hr>
 <h4><a href="#">-Bikes</a></h4>
 <hr>
<!--  <h4><a href="#">-Bikes</a></h4>-->
  </div>
      
	<font face="sans-serif"  size="12" color="#24CBF0">WELCOME </font>
        <font face="sans-serif"  size="8" color="#1EBD39">TO QUIKRR</font><br><hr><br>
<div class="gallery"> 
  <img src="images\quikr.jpg" alt="5Terre" width="600" height="400">
  
  <div class="desc">Quikr Bazar</div>
  <h4><a href ="furniture.jsp">-Furniture & Decor</a></h4>
      <h4><a href ="electronic.jsp">-Electronic & Appliances</a></h4>
</div>

<div class="gallery"> 
  <img src="images\quikr.jpg" alt="5Terre" width="600" height="400">
  </a>
  <div class="desc">Quikr Cars</div>
  <h4><a href ="used.jsp">-Used Cars</a><h4>   
    <h4><a href ="newcar.jsp">-New Cars</a></h4>
</div>

<div class="gallery"> 
  <img src="images\quikr.jpg" alt="5Terre" width="600" height="400">
  </a>
  <div class="desc">Quikr jobs</div>
  <h4><a href ="sell_list.html">-Full Time Jobs </a></h4>
      <h4> <a href ="#">-Part Time Jobs</a></h4>
</div>

<div class="gallery"> 
  <img src="images\quikr.jpg" alt="5Terre" width="600" height="400">
  </a>
  <div class="desc">Quikr Mobiles</div>
  <h4><a href ="sell_list.html">-New Smartphones</a></h4>
  <h4><a href ="#">-Second Hand Phones</a></h4>
</div>

</div>
</body>
</html>





