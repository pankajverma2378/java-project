<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<p> Products in your cart are</p>
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
 user_password=(String)session.getAttribute("s_no");

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
<div class="col-sm-4">
      <div class="panel panel-danger">
          <div class="panel-heading"><h1><b><%=rs.getString("pname") %></b></h1></div>
        <div class="panel-body"><img src="images/table.jpg" class="img-responsive" style="width:100%;height:180px" alt="Image"></div>
        <div class="panel-footer"><h3><b><font color="darkblue"><center>
        Price = <%=rs.getString("pprice") %><br>
         <%
            session.setAttribute("sno",rs.getString("s_no"));
  %>
  <button class="button button4"><a href="buy.html">BUY NOW</a></button>
          <button class="button button4"><a href="ATC.jsp">Add TO Cart</a></button></center> </font></b></h3>
</div>
      </div>
    </div>
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