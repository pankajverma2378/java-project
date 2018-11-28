import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

 
public class buy extends HttpServlet {
      protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        try {
String name=request.getParameter("cname");
String email=request.getParameter("cemail");
String num=request.getParameter("cnum");
String add=request.getParameter("caddress");
String pin=request.getParameter("cpin");

       String s_id1="";
    Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root" ,"");
            Statement  st =  con.createStatement();
String query = " insert into buy (Name,Email,CNumber,Address,Pincode,user_id)"
        + " values (?,?,?,?,?,?)";

//request.getRequestDispatcher("index.html").include(request, response);  
          
       HttpSession session=request.getSession();
       s_id1=(String)session.getAttribute("s_id");
      
      // create the mysql insert preparedstatement
      PreparedStatement ps = con.prepareStatement(query);
      ps.setString (1, name);
      ps.setString (2, email);
      ps.setString (3, num);
      ps.setString (4, add);
      ps.setString (5,pin);
      ps.setString (6,s_id1);

      ps.execute();
      
      response.sendRedirect("buy_delete.jsp");  
      con.close();       
          
        } catch (Exception e) {
             response.sendRedirect("pleaselogin.html"); 
//            out.println("\nPlease Login First\n");
        }
        finally {
            out.close();
        }
    }
}