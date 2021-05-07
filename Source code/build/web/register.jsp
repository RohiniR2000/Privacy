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
        var uname=document.ureg.username.value;
        var pass=document.ureg.password.value;
        var cpass=document.ureg.cpassword.value;
        var mail=document.ureg.mail.value;
        var name=document.ureg.name.value;
        var ph=document.ureg.mobile.value;
        
        if(name==0){
            alert("Enter name");
            document.ureg.name.focus();
            return false;
        }
        if(uname==0){
            alert("Enter username");
            document.ureg.username.focus();
            return false;
        }
        if(pass==0){
            alert("Enter password");
            document.ureg.password.focus();
            return false;
        }
        if(cpass!=pass){
            alert("Incorrect password");
            document.ureg.cpassword.focus();
            return false;
        }
        if(mail==0){
            alert("Enter mailid");
            document.ureg.mail.focus();
            return false;
        }
        if(ph==0){
            alert("Enter your mobile no");
            document.ureg.mobile.focus();
            return false;
        }
         if(isNaN(ph)){
                 alert("Invalid phoneno");
                 document.ureg.mobile.focus();
                 return  false;
            }
    }
</script>
<style>
    input{
        width: 200px;
        height: 25px;
        
    }
    #but{
        width: 75px;
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
          <li><a href="index.html">Home</a></li>
          <li><a href="owner.jsp">Owner Login</a></li>
          <li><a href="TPALogin.jsp">TPA Login</a></li>
          <li><a href="user.jsp">Data User</a></li>
          <li class="selected"><a href="register.jsp">Registration</a></li>
          
        </ul>
      </nav>
    </header>
    <div id="site_content">
      <div id="sidebar_container">
        <div class="gallery">
          <ul class="images">
            <img width="450" height="450" src="images/reg.png" alt="photo_one" />
            
        </div>
      </div>
      <div id="content">
          <fieldset style="background-color:tomata;border-radius: 9px;height: 460px;margin-top: 00px;background-image: url('images/.jpg')">
              <center>
			<h1 style="font: monospace;font-size: 26px;font-weight: bold;color: darkblue">Registration</h1>
              </center>
                        
                        <form action="registration" name="ureg" style="position: relative;;" method="get" onsubmit="return validation()"> 
<!--                  USERNAME:<br>-->

<label style="font: monospace;color:black;margin-left:70px;font-weight: bold">NAME:</label><input type="text" name="name"required style="margin-left: 80px;" placeholder="Enter your name" ><br></br>
<label style="font: monospace;color:black;margin-left:70px;font-weight: bold">USERNAME:</label><input type="text" name="username"required style="margin-left: 45px;" placeholder="Enter username"><br></br>
<label style="font: monospace;color:black;margin-left:70px;font-weight: bold">PASSWORD:</label><input type="password" name="password" required style="margin-left:43px;"placeholder="Enter password"><br></br>
<label style="font: monospace;color:black;margin-left:70px;font-weight: bold">RE-PASSWORD:</label><input type="password" name="cpassword" required style="margin-left: 21px;"placeholder="confirm your password"><br></br>
<label style="font: monospace;color:black;margin-left:70px;font-weight: bold">EMAIL:</label><input type="email" name="mail" required style="margin-left: 76px;"placeholder="Enter your email"><br></br>
<label style="font: monospace;color: black;margin-left:70px;font-weight: bold">MOBILE NO:</label><input type="text" name="mobile"required style="margin-left: 43px;" placeholder="Enter your mobile no" maxlength="10"><br></br>
&nbsp;<center><input type="submit" id="but" value="Submit"style="border-radius: 12px;height: 38px;width: 93px;background-color:slateblue"/>
&nbsp;&nbsp;   <input type="reset" id="but" value="Reset" style="border-radius: 12px;height: 38px;width: 83px;background-color:slateblue"></input><br></br>
                                                         
                
            
		</form>
                       
                   
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
