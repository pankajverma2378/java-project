<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<br><br>   Details of Listed Products with their prices: </br></br>
 <%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<p align="center">


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

   </body>
</html>