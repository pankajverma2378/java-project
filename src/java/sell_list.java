import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

 
public class sell_list extends HttpServlet {
      protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        try {
String name=request.getParameter("p_name");
String price=request.getParameter("p_price");
String color=request.getParameter("p_color");
String yop=request.getParameter("p_yop");
String category=request.getParameter("p_category");

       String s_id1="";
    Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root" ,"");
            Statement  st =  con.createStatement();
String query = " insert into car_dir2 (pname, pprice,pcolor,pyop,Category,user_id)"
        + " values (?,?,?,?,?,?)";

//request.getRequestDispatcher("index.html").include(request, response);  
          
       HttpSession session=request.getSession(false);
       s_id1=(String)session.getAttribute("s_id");
      
      // create the mysql insert preparedstatement
      PreparedStatement ps = con.prepareStatement(query);
      ps.setString (1, name);
      ps.setString (2, price);
      ps.setString (3, color);
      ps.setString (4, yop);
      ps.setString (5,category);
      ps.setString (6,s_id1);
     
      ps.execute();
      
      response.sendRedirect("Main_new.jsp");  
      con.close();       
          
        } catch (Exception e) {
            response.sendRedirect("pleaselogin.html");
//            out.println("\nSell_list not working\n");
        }
        finally {
            out.close();
        }
    }
}