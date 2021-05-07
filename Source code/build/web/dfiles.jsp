<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="pack.Dbconnection"%>
<!DOCTYPE HTML>
<html>

<head>
<title>Privacy Detecting</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
  <link rel="stylesheet" type="text/css" href="css/style.css" />
  <!-- modernizr enables HTML5 elements and feature detects -->
  <script type="text/javascript" src="js/modernizr-1.5.min.js"></script>
  <style>
    table,td,tr{
        border-collapse: collapse;
        border-style: solid;
    }
    table{
        width: 680px;
        background-color: black;
        color:white;
    }
    td{
        text-align: center;
    }
    tr{ 
        background-color: black;
        height: 25px;
    }
</style>
</head>

<body>
         
  <div id="main">
    <header>
      <div id="logo">
        <div id="logo_text">
          <!-- class="logo_colour", allows you to change the colour of the text -->
         <pre><h1 style="color:orangered"><b>Scalable Approach for Public Auditing using Cloud</b></h1></pre>
       
        </div>
      </div>
      <nav>
        <ul class="sf-menu" id="nav">
          <li><a href="user_page1.jsp">User Home</a></li>
                        <li  class="selected"><a href="files1.jsp">Request File</a></li>
                        <li><a href="dfiles.jsp">Download file</a>
                            
                                <li><a href="index.html">Logout</a></li>
                                                
        </ul>
      </nav>
    </header>
    <div id="site_content">

<%
 Connection con=Dbconnection.getConn();
 Statement st=con.createStatement();
 ResultSet rt=st.executeQuery("select * from request where status='Issued'");
%>
      <div id="content">
      
       <center>
                        <form action="" method="get">
                        <table style="border-style: solid;margin-left: 80px;background-color: black">
                            <caption> <h2 style="color: darkslateblue;font-family: monospace;font-weight: bold;font-size: 30px">FILES AVAILABLE ON CLOUD</h2></caption>
                            <tr style="background-color: black;font-size: 18px;font-family: monospace;font-weight: bold;">                                
                                <td style="text-align: center">FILE NAME</td><td style="text-align: center">USER NAME</td> <td style="text-align: center">UPLOADED SIZE</td><td style="text-align: center">UPLOADED ON</td><td>Status</td><td>DOWNLOAD</td>
                            </tr>
                            <%
                            while(rt.next()){
                              
                                String uname=rt.getString("filename");
                                String user=rt.getString("username");
                                String pass=rt.getString("size");
                                String mail=rt.getString("upload_time");
                                String sta=rt.getString("status");
                              // HttpSession user = request.getSession();
                               
                      //  String uname = user.getAttribute("username").toString();
                       // String name = user.getAttribute("name").toString();
                       // Statement s1=con.createStatement();
                       //int i= s1.executeUpdate("insert into request values('"+uname+"','"+user+"','"+pass+"','"+mail+"','"+status+"')"); 
                        //if(i>0)
                          //  System.out.println("Inserted");
//                                String avail=rt.getString("status");
                            %>
                            <TR>
                               <td style="text-align: center"><%=uname%></td> <td style="text-align: center"><%=user%><td style="text-align: center"><%=pass%></td> <td style="text-align: center"><%=mail%></td><td style="text-align: center"><%=sta%>
                               <td><a href="downloads.jsp?fname=<%=uname%>&size=<%=pass%>&time=<%=mail%>" style="color:white">Download</a>
                            </TR>    
                            <%
                            }
                            %>
                    
                        </table>
                        </form>
            </center> 
      </div>
    </div>
    
  </div>
  <p>&nbsp;</p>
  <!-- javascript at the bottom for fast page loading -->
  <script type="text/javascript" src="js/jquery.js"></script>
  <script type="text/javascript" src="js/jquery.easing-sooper.js"></script>
  <script type="text/javascript" src="js/jquery.sooperfish.js"></script>
  <script type="text/javascript" src="js/image_fade.js"></script>
  <script type="text/javascript">
    $(document).ready(function() {
      $('ul.sf-menu').sooperfish();
    });
  </script>
</body>
</html>
