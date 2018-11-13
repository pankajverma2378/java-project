<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<link rel="stylesheet" type="text/css" href="css/util.css">
<link rel="stylesheet" type="text/css" href="css/util.css">
<link rel="stylesheet" type="text/css" href="css/main.css">

</head>

<body >

    
    <div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<button class="login100-form-btn">
								<a href="logoutservlet"  >Logout</a>
							</button>
						</div>
</div>
    
    
<div align="right" id="txt"> </div>
<p><img  src="images\clever-owl.png" width="77" height="77" align="right"></p>
<a href="MAIN.html">
<img onmouseover="expand(this)" onmouseout="notexp(this)" src="images\amplifyworks-logo.svg" width="84"height="84"></a>

<font face="sans-serif"  size="12" color="#24CBF0">Welcome</font>
<br><br>   Details of Listed Products with their prices: </br></br>
 <%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>



<p align="center">
<form method="post" align="center">

<table border="2">
<tr>
<td>Product Name</td>
<td>Product Price</td>
<td>Product YOP</td>
<td>Product color</td>

</tr>
<%
try
{
    String user_password="";
        String check="";
Class.forName("com.mysql.jdbc.Driver");
    HttpSession ss=request.getSession();
 user_password=(String)session.getAttribute("s_id");
 

String url="jdbc:mysql://localhost:3306/test";
String username="root";
String password="";
String query="select * from car_dir2 where user_id="+user_password;
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