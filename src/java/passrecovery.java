import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

 
public class passrecovery extends HttpServlet {
      protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        try {
     String s1=request.getParameter("ans1");  
      String s2=request.getParameter("ans2");  
           //out.print(s1); out.print(s2);
       
    Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root" ,"");
            Statement  st =  con.createStatement();
            String query = "select * from login";
            String s3="";
            String s4 ="";
            String pass = "";
        ResultSet rs = st.executeQuery(query);
            while(rs.next())
            {
                s3 = rs.getString("Fav_color");
                s4 = rs.getString("Bname");
                pass = rs.getString("pass");
                if(s1.equals(s3) && s2.equals(s4))
                {
                    out.println(pass);
                }
                else{
                    out.println("No Record Found");
                }
            }
      con.close();       
      
          
        } catch (Exception e) {
            out.println("\nUsername already exists, choose a unqiue one!\n");
        }
        finally {
            out.close();
        }
    }
}