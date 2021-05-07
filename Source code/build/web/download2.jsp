<%@page import="Util.TrippleDes"%>
<%@page import="java.util.HashMap"%>
<%@page import="com.sun.org.apache.bcel.internal.generic.AALOAD"%>
<%@page import="java.util.ArrayList"%>
<%@page import="pack.decryption"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.BufferedInputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="pack.Dbconnection"%>
<!DOCTYPE HTML>
<html>

<head>
 <title>Diplo Cloud</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
  <link rel="stylesheet" type="text/css" href="css/style.css" />
  <!-- modernizr enables HTML5 elements and feature detects -->
  <script type="text/javascript" src="js/modernizr-1.5.min.js"></script>
  <script>
      function checkKey(){
          var fistInput = document.getElementById("savedinK").value;
          var secondInput = document.getElementById("secKey").value;
          if(fistInput !=secondInput){
              alert('Wrong Key');
              return false;
          }else{
              document.getElementById("f1").action="down3.jsp";
          }
      }
  </script>
  <style>
      h1{
          position: relative;
          left: 350px;
          
      }
      
    #id{
        width: 200px;
        height: 25px;
        background-color: #D5D5D5;
    }
    #but{
        width: 60px;
        height: 25px;
        background-color: burlywood;
    }
</style>
 <style>
    table,td,tr{
        border-collapse: collapse;
        border-style: solid;
    }
    table{
        position: relative;
        left: 100px;
        width: 680px;
    }
    td{
        text-align: center;
    }
    tr{ 
        background-color: #D9D5CF;
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
        </div>
      </div>
       <nav>
                    <ul class="sf-menu" id="nav">
                         <li><a href="user_page1.jsp">Logout</a></li>
                    </ul>
                                       </nav>
            
    </header>
    <div id="site_content">

      <div id="content">
            <h1><b> DOWNLOAD THE FILE </b></h1><BR>
          <%
//HttpSession user=request.getSession();
//String uname=user.getAttribute("username").toString();   
//String name=user.getAttribute("name").toString();  
    Connection con=Dbconnection.getConn();
    String encrKey =request.getParameter("savedOutK");
   // String contents = new TrippleDes(encrKey).decrypt(request.getParameter("fcontent"));
     
    System.out.println("first dec key "+encrKey);
  //  System.out.println("first dec "+contents);
    String id=request.getParameter("fid");
    String fname =null;
    String firstKey = null;
    String secondKey = null;
     String content1 = null;
     String content2 = null;
    Statement st=con.createStatement();
    System.out.println(encrKey);
    //System.out.println(contents);
    System.out.println(id);
    ResultSet rt=st.executeQuery("select * from files where idfiles='"+id+"'");
    if(rt.next()){
        
        firstKey=rt.getString("file_key");
        secondKey=rt.getString("second_key");
         content1=rt.getString("content");
         content2 = new TrippleDes(secondKey).decrypt(content1);
      String contents = new TrippleDes(firstKey).decrypt(content2);
     
        fname=rt.getString("filename");
    %>
 <form action="downloads.jsp" method="post">
                        <input type="hidden" name="first" value="<%=firstKey%>"/><br/>
                         <input type="hidden" name="second" value="<%=secondKey%>"/><br/>
                        <input type="hidden" name="fnamee" value="<%=fname%>"/><br/>
                        <input type="hidden" name="fid" value="<%=id%>"/><br/>
                        <h1>File Name: <font style="color: tomato"> <%=fname%></font></h1>
                        <textarea name="content" style="width: 400px;height: 400px;position: relative;left: 250px;"><%=contents%></textarea><br><br><br>
<%
}
%>
 <pre>
                          <input style="margin-left: 270px" type="submit" id="but"value="Download  "/>
                        </pre>
</form>
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
