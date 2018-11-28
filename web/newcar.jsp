<%-- 
    Document   : used
    Created on : Nov 20, 2018, 11:54:41 AM
    Author     : hp
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.*,java.util.*" %>


<!DOCTYPE html>
<html lang="en">
<head>
  <title>New Cars</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default rounded borders and increase the bottom margin */ 
    .navbar {
      margin-bottom: 50px;
      border-radius: 0;
    }
    
    /* Remove the jumbotron's default bottom margin */ 
     .jumbotron {
      margin-bottom: 0;
    }
   
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
  </style>
  <style>
.button {
    background-color: darkblue; /* Green */
    border: none;
    color: white;
    padding: 20px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}



.button4 {border-radius: 12px;}

</style>
</head>
<body>
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
    <li><a href="user_profile.jsp"><span class="glyphicon glyphicon-log-in"></span> Profile</a></li>
    <li>&nbsp<button class="btn navbar-btn"><a href="sell_list.html">Post Free Ad</a></button></li>
	</ul>
  </div>
</nav>
    
<div class="container">    
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-primary">
          <div class="panel-heading"><h1><b>CRUZE</b></h1></div>
        <div class="panel-body"><img src="images/cruze.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer"><h3><b><font color="darkblue"><center>1100000/- Rs<br><button class="button button4" onclick="window.location.href='buy.html'">BUY NOW</button></center> </font></b></h3></div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-danger">
          <div class="panel-heading"><h1><b>SWIFT</b></h1></div>
        <div class="panel-body"><img src="images/swift.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer"><font color="darkblue"><h3><center><b>700000/- Rs<br><button class="button button4" onclick="window.location.href='buy.html'">BUY NOW</button></center></b></h3></font></div>   
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-success">
          <div class="panel-heading"><h1><b>THAR</b></h1></div>
        <div class="panel-body"><img src="images/THAR.jpeg" class="img-responsive" style="width:100%;height:222px" alt="Image"></div>
        <div class="panel-footer"><font color="darkblue"><h3><center><b>700000/- Rs<br><button class="button button4" onclick="window.location.href='buy.html'">BUY NOW</button></center></b></h3></font></div>
      </div>
    </div>
  </div>
</div><br>


<footer class="container-fluid text-center">
  <p>For More Queries Please Reach to us AT</p>  
  <form class="form-inline">quikrservices@gmail.com
    
  </form>
</footer>

</body>
</html>


