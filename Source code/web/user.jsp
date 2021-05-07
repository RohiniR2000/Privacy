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
        var uname=document.ulogin.username.value;
        var pass=document.ulogin.password.value;
        
        if(uname==0){
            alert("Enter username");
            document.ulogin.username.focus();
            return false;
        }
        if(pass==0){
            alert("Enter password");
            document.ulogin.password.focus();
            return false;
        }
    }
</script>
<style>
    #id{
        width: 200px;
        height: 25px;
        
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
        out.println("<script>alert('Registered')</script>");
    }
    
    %>
  <div id="main">
    <header>
      <div id="logo">
        <div id="logo_text">
          <!-- class="logo_colour", allows you to change the colour of the text -->
          <pre><center><h1 style="color:orangered"><b>Scalable Approach for Public Auditing using Cloud</center></b></h1></pre>
        </div>
      </div>
      <nav>
        <ul class="sf-menu" id="nav">
         <li><a href="index.html">Home</a></li>
          <li><a href="owner.jsp">Owner Login</a></li>
          <li><a href="TPALogin.jsp">TPA Login</a></li>
          <li class="selected"><a href="user.jsp">Data User</a></li>
          <li><a href="register.jsp">Registration</a></li>
                     </ul>
      </nav>
    </header>
    <div id="site_content">
      <div id="sidebar_container">
        <div class="gallery">
          <ul class="images">
            <img width="450" height="450" src="images/login3.png" alt="photo_one" />
            
        </div>
      </div>
      <div id="content">
          <fieldset style="background-color:tomata;border-radius: 9px;height: 430px;margin-top: 10px;background-image: url('images/.jpg')">
          <center>
        <h1 style="font: monospace;font-size: 35px;font-weight: bold;color: darkslateblue">User Login</h1><br>
            <form action="user_login" name="ulogin" method="post" onsubmit="return validation()"> 
<label style="font-size: 20px;margin-left:35px;">User Name</label><input type="text" id="id" name="username"required style="margin-left: 32px;" placeholder="Enter User Name"/><br></br><br><br>
 <label style="font-size: 20px;margin-left:32px">Password</label><input type="password"  id="id"name="password"required style="margin-left: 47px;" placeholder="Enter password"/><br></br><br><br>
<input type="submit"  value="Submit"style="border-radius: 12px;height: 38px;width: 93px;background-color:slateblue"/>

<input type="reset" value="Reset" style="border-radius: 12px;height: 38px;width: 83px;background-color:slateblue"></input><br></br>
     
  
                <font style="font-size: 17px;">     <label style="font: monospace;color:white"><b>New User</b></label>    <a href="register.jsp" style="font: monospace;color:black"><b>Click here</b></a>     </font>              
                
            
            </form>
          </center>
          </fieldset>
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
