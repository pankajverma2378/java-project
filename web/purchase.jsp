<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <title>Purchase</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
<!--<link rel="stylesheet" type="text/css" href="css/util.css">
<link rel="stylesheet" type="text/css" href="css/util.css">
<link rel="stylesheet" type="text/css" href="css/main.css">-->

<style>
    table.design{
    margin: 1em 0;
    min-width: 300px;
    background: #34495E;
    color: #fff;
    border-radius: .4em;
    overflow: hidden;
    }
    tr {
    border-top: 1px solid #ddd;
    border-bottom: 1px solid #ddd;
  }
  
  th {
    display: none; // for accessibility, use a visually hidden method here instead! Thanks, reddit!   
  }
  
  
    
</style>


</head>

<body >
    
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
  
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Quikr</a>
    </div>
	
    <ul class="nav navbar-nav">
        <li class="active"><a href="Main_new.jsp">Home</a></li>
    </ul>
	
	<form class="navbar-form navbar-left" action="/action_page.php" method="post">
    <div class="form-group">
    <input type="text" class="form-control" placeholder="Search" name="search">
	</div>
	<button type="submit" class="btn btn-default">Submit</button>
	</form>
	
	<ul class="nav navbar-nav navbar-right">
    <li><a href="user_profile.jsp"><span class="glyphicon glyphicon-log-in"></span> Profile</a></li>
    <li><button class="btn navbar-btn"><a href="logoutservlet">Post Free Ad</a></button></li>
	</ul>
  </div>
</nav>
    
<br><br>   Details of Listed Products with their prices: </br></br>
 <%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>

<p align="center">
<form method="post" align="center">

<table border="2" class="design">
<tr>
<td>Product Name</td>
<td>Product Price</td>
<td>Product YOP</td>
<td>Product color</td>
<td>Product Listed By User:</td>
<td>Product Category</td>

</tr>
<%
try
{
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/test";
String username="root";
String password="";
String query="select * from car_dir2";
Connection conn=DriverManager.getConnection(url, username, password);
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery(query);
while(rs.next())
{
%>
<tr><td><%=rs.getString("pname") %></td>
    <td><%=rs.getString("pprice") %></td>
<td><%=rs.getString("pcolor") %></td>
<td><%=rs.getString("pyop") %></td>
<td><%=rs.getString("user_id") %></td>
<td><%=rs.getString("Category") %></td>
</tr>
 <%
}
%>
</table>
<%
rs.close();
stmt.close();
conn.close();
}
catch(Exception e)
{
e.printStackTrace();
}
%>
</form>

    </body>
</html>