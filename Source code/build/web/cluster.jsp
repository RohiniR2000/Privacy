<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="pack.Dbconnection"%>
<%
 try {
            String fname=request.getQueryString();
            System.out.println("filename:" +fname);
             String s1=fname.substring(0, 1);
             System.out.println("hello" +s1);
           Connection con= Dbconnection.getConn();          
           Statement st1=con.createStatement();
         Statement st2=con.createStatement();
            ResultSet rs=st1.executeQuery("select * from files where filename like '%"+s1+"%'");
         //   ResultSet rs1=st2.executeQuery("select * from cluster where filename like '%"+s1+"%' ");
            //System.out.println("match word" +rs1);
              while(rs.next()){ 
                   String r=rs.getString("idfiles");
             //   if(rs1.next()){ 
                //   String r=rs1.getString("clusterid");
                int l=st1.executeUpdate("insert into cluster(clusterid,filename) values ('"+r+"','"+fname+"')  ");
              
               if(l!=0){
              
           
           int i=st1.executeUpdate("update files set count='Yes' where filename='"+fname+"'");
           
           if(i!=0){
               response.sendRedirect("worker.jsp?msg=File Inserted");
           }
                     }
           else{
               out.println("error while updating");
           }
                     }
         }
                //   }
        catch(Exception e){
            out.println(e);
        }
%>