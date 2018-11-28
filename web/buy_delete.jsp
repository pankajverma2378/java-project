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
<!DOCTYPE html>
<html>
<head>
</head>
<body>
            <p>Thank You for trusting us your product will be delivered to you shortly</p>

    <%
try
{
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/test";
String username="root";
String password="";

Connection conn=DriverManager.getConnection(url, username, password);
Statement stmt=conn.createStatement();
String delete_prod="";

HttpSession ss=request.getSession();
delete_prod= (String)session.getAttribute("sno");
stmt.executeUpdate("delete from car_dir2 where s_no="+delete_prod);
}
catch(Exception e)
{
e.printStackTrace();
}
%>
</body>
</html>