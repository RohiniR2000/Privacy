
<%@page import="pack.Dbconnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%

    String fname = request.getParameter("fname");
    String uname = request.getParameter("user");
   // System.out.println("Trustee Values :" + fname + mail);
    try {
        Connection con;
        Statement st;
        con = Dbconnection.getConn();
        st = con.createStatement();
        int j = st.executeUpdate("update request set status='Issued' where filename='" +fname+ "' AND username='" +uname+ "'");
        if (j != 0) {

            //response.sendRedirect("tparequest.jsp?msg=File_security_issued");
            out.println("<script>alert('File Response Issued')</script>");
        } else {
            response.sendRedirect("tparequest.jsp?msg=Issued_failed");
        }

    } catch (Exception ex) {
        ex.printStackTrace();
    }
%>