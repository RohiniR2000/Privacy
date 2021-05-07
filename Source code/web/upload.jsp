<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
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
  <script>
      function validation(){
          if(document.name.token.value==0){
              alert('Enter your token');
              document.name.token.focus();
              return false;
          }
      }
  </script>
  <style>
      form{
          position: relative;
          left: 350px;
          
      }
       h1{
          position: relative;
          left: 0px;
          
      }
      
    #id{
        width: 200px;
        height: 25px;
        background-color: #D5D5D5;
    }
    #but{
        width: 60px;
        height: 25px;
    }
</style>
</head>
<body>
        <%
    if(request.getParameter("status")!=null){
        out.println("<script>alert('File Upload in Cloud...')</script>");
    }
     if(request.getParameter("failed")!=null){
        out.println("<script>alert('file name already exist...')</script>");
    }
    if(request.getParameter("fail")!=null){
        out.println("<script>alert('file content already exist...')</script>");
    }
    %>
  <div id="main">
    <header>
      <div id="logo">
        <div id="logo_text">
          <!-- class="logo_colour", allows you to change the colour of the text -->
            <!-- class="logo_colour", allows you to change the colour of the text -->
                     <pre><h1 style="color:orangered"><b>Scalable Approach for Public Auditing using Cloud</b></h1></pre>
           
                    </div>
                </div>
                <nav>
                    <ul class="sf-menu" id="nav">
                       <li><a href="owner_page.jsp">Owner Home</a></li>
                        <li><a href="upload.jsp">File Upload</a></li>
                        
                        <li><a href="users_1.jsp">View User</li></a>
                       
                             <li><a href="files.jsp">View files</a></li>
                       
                       
                       <li><a href="index.html">Logout</a></li>
                       
              
                    </ul>
      </nav>
    </header>
    <div id="site_content" style="background-image: url('images/up.png');background-size: 100% 100%">
        <div id="content" >
    <font style="color: tomato"> Welcome Admin</font></h1>
<h1><font style="color:white;margin-left: 150px">Upload file</font></h1>
    <form action="upload" name="name" method="post" enctype="multipart/form-data">
        <input type="file" name="file" ><br></br><br>
       
    <input type="submit" id="but" style="background-color:slateblue "value="Upload">  <input type="reset"id="but"  style="background-color:slateblue"value="Reset">
        </pre><br><br><br><br><br><br>
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
