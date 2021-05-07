<%-- 
    Document   : request
    Created on : 22-Jun-2019, 16:15:03
    Author     : asus
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="pack.Dbconnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            
            String fname=request.getParameter("fname");
            String size=request.getParameter("size");
            String time=request.getParameter("time");
            String status="Request";
                HttpSession user = request.getSession();
                              
                        String name = user.getAttribute("name").toString();
                        Connection con=Dbconnection.getConn();
                        Statement s1=con.createStatement();
                       int i= s1.executeUpdate("insert into request values('"+fname+"','"+name+"','"+size+"','"+time+"','"+status+"')"); 
                        if(i>0)                       
                            out.println("<script>alert('Request Send Successfully')</script>");
                            
                        Statement st=con.createStatement();
                        ResultSet rs=st.executeQuery("select * from  request where  filename='"+fname+"'");
           while(rs.next())
           {
               String sta=rs.getString("status");
               if(sta.equalsIgnoreCase("Request"))
                        out.println("<script>alert('Request already Send')</script>");
            
           }
                
            
            
            
            %>
    </body>
</html>
