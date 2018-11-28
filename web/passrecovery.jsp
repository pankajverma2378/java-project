<%-- 
    Document   : passrecovery
    Created on : Nov 22, 2018, 10:42:37 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>


    <%
try
{
    String id="";
   String newpass = request.getParameter("newpass");
Class.forName("com.mysql.jdbc.Driver");
    HttpSession ss=request.getSession();
 id=(String)session.getAttribute("s_id");

String url="jdbc:mysql://localhost:3306/test";
String username="root";
String password="";
Connection conn=DriverManager.getConnection(url, username, password);
Statement stmt=conn.createStatement();
String query="update login set username=?,pass=?,Fav_color=?,Bname=? where pass="+id;
PreparedStatement ps = conn.prepareStatement(query);
//ps.setString(1,"pankaj");
ps.setString(2,newpass);
//ps.setString(3,"black");
//ps.setString(4,"milan");
ps.executeUpdate();
    out.println("updated");

}
catch(Exception e){
    out.println("Error");
}
%>

	
