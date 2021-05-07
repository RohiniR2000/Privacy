<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="pack.Dbconnection"%>
<%
 try {
            String fname=request.getQueryString();
            System.out.println("filename: "+fname);
           Connection con= Dbconnection.getConn();          
           Statement st1=con.createStatement();
           
           int i=st1.executeUpdate("update files set status='Yes' where filename='"+fname+"'");
           if(i!=0){
               response.sendRedirect("filecluster.jsp?msg=File_inserted_to_Master");
           }
           else{
               out.println("error while updating");
           }
        }
        catch(Exception e){
            out.println(e);
        }
%>