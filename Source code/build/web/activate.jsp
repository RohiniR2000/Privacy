<%@page import="pack.MailSender"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="pack.Dbconnection"%>
<%@page import="java.util.Random"%>
<%
try{
            String uname=request.getQueryString();
            Random r=new Random();
            int n=r.nextInt();
            String key=n+"";
            Connection con= Dbconnection.getConn();
            Statement st1=con.createStatement();
            ResultSet rt1 = st1.executeQuery("select mail from register where username ='"+uname+"'");
          if(rt1.next()){
             String emailId=rt1.getString("mail");
             new MailSender().sendMail(emailId, "User key", key);
          }
          else{
              out.println("gettin mail id failed");
          }
          Statement st=con.createStatement();
          int i=st.executeUpdate("update register set private='"+key+"',activate='yes' where username='"+uname+"' ");
          if(i!=0){
              //out.println("success..");
             response.sendRedirect("users_1.jsp?");
          }
          else{
              out.println("error while entering data");
          }
        } 
        catch(Exception e){
            out.println(e);
        }
%>