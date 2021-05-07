<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="pack.Dbconnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.io.OutputStream"%>
<%

    String filenm = request.getParameter("fname");
    
    try {
        Connection con=Dbconnection.getConn();
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from files where filename='"+filenm+"'");
        while(rs.next())
        {
            String data=rs.getString("content");
            byte a[] = data.getBytes();
        response.setContentType("text/plain");
        response.setHeader("Content-Disposition", "attachment; filename=\"" + filenm + "\"");
        OutputStream os = response.getOutputStream();
        os.write(a);
        os.close();
        a = null;
        if (a == null) {
        }
        }
      //  String data = request.getParameter("content");
        
    } catch (Exception ex) {
        ex.printStackTrace();
    }
%>