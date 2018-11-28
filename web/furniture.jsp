<%-- 
    Document   : furniture
    Created on : Nov 19, 2018, 9:56:40 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.*,java.util.*" %>

<!DOCTYPE html>

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
    padding-left: 150px;
	}
div.container
	{
	border-top: 1px solid black;
	border-right: 1px solid black;
	float: left;
    width: 150px;
    padding: 2px;
    height: 100%; 
	}
  </style>
  
</head>

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
      <li><button class="btn navbar-btn"><a href="logoutservlet">LogOut</a></button>
    <!--<li>&nbsp<button class="btn navbar-btn"><a href="sell_list.html">Post Free Ad</a></button></li>-->
    
	</ul>
  </div>
</nav>
    
    <%
    try
{
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/test";
String username="root";
String password="";
String query="select * from car_dir2 where Category='furniture'";
Connection conn=DriverManager.getConnection(url, username, password);
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery(query);
%>

 
<div class="spacing">
      <font face="sans-serif"  size="12" color="#24CBF0">Furniture </font><br><hr><br>
      <form>
      <div class="col-sm-4">
      <div class="panel panel-primary">
          <div class="panel-heading"><h1><b>TABLE</b></h1></div>
        <div class="panel-body"><img src="images/dinning.jpg" class="img-responsive" style="width:100%;height:188px" alt="Image"></div>
        <div class="panel-footer"><h3><b><font color="darkblue"><center>1000/- Rs<br>
                        <button class="button button4"><a href="buy1.html">BUY NOW</a></button></center> </font></b></h3></div>
      </div>
    </div>

<div class="col-sm-4"> 
      <div class="panel panel-danger">
          <div class="panel-heading"><h1><b>SOFA</b></h1></div>
        <div class="panel-body"><img src="images/sofa.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer"><font color="darkblue"><h3><center><b>10000/- Rs<br>
                        <button class="button button4"><a href="buy1.html">BUY NOW</a></button></center></b></h3></font></div>   
      </div>
    </div>
<div class="col-sm-4"> 
      <div class="panel panel-success">
          <div class="panel-heading"><h1><b>BED</b></h1></div>
        <div class="panel-body"><img src="images/bed.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer"><font color="darkblue"><h3><center><b>15000/- Rs<br>
        <button class="button button4"><a href="buy1.html">BUY NOW</a></button></center></b></h3></font></div>
      </div>
    </div>
      <%

while(rs.next())
{
%>

<div class="col-sm-4">
      <div class="panel panel-danger">
          <div class="panel-heading"><h1><b><%=rs.getString("pname") %></b></h1></div>
        <div class="panel-body"><img src="images/table.jpg" class="img-responsive" style="width:100%;height:180px" alt="Image"></div>
        <div class="panel-footer"><h3><b><font color="darkblue"><center>
        Price = <%=rs.getString("pprice") %><br>
         <%
            HttpSession ss=request.getSession(); 
            session.setAttribute("sno",rs.getString("s_no"));
  %>
  <button class="button button4"><a href="buy.html">BUY NOW</a></button>
<!--          <button class="button button4"><a href="ATC.jsp">Add TO Cart</a></button></center> </font></b></h3>-->
</div>
      </div>
    </div>
</form>
 <%
}
rs.close();
stmt.close();
conn.close();
}
catch(Exception e)
{
    out.println("Please Log in First");
e.printStackTrace();
}
%>
</div>

