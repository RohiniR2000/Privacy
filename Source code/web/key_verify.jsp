<%@page import="pack.MailSender"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="pack.Dbconnection"%>
<%
    String key=request.getParameter("key");
    HttpSession user=request.getSession();
    String uname=user.getAttribute("username").toString();
   
    System.out.println("uname "+uname);
    
       
        Connection con=Dbconnection.getConn();
        Statement st=con.createStatement();
        Statement st1=con.createStatement();
      
       ResultSet rt=st.executeQuery("select * from register where username='"+uname+"' AND private='"+key+"' AND activate='yes'");
    System.out.println("result set executed");
    if(rt.next()){
        String p=rt.getString("private");
         String u=rt.getString("username");
        if(p.equals(key)){
            if(u.equals(uname)){
            
            response.sendRedirect("user_page1.jsp?msg=success");
                     }
                     else{
                  out.println("your not yet Activated.....");
                     }
        }
        else{

            response.sendRedirect("user.jsp?umsg=failed");
        }
    }
    else{

        response.sendRedirect("user.jsp?msgg=failed");

    }

  %>