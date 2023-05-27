<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!--
Template Name: Internet Business
Author: <a href="http://www.os-templates.com/">OS Templates</a>
Author URI: http://www.os-templates.com/
Licence: Free to use under our free template licence terms
Licence URI: http://www.os-templates.com/template-terms
-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Capstone 2023</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
<link rel="icon" href="img/architecture.jpg"></link>
<script type="text/javascript" src="layout/scripts/jquery.min.js"></script>
<script type="text/javascript" src="layout/scripts/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="layout/scripts/jquery.hslides.1.0.js"></script>
<script type="text/javascript">
$((function () {
    $('#accordion').hSlides({
        totalWidth: 920,
        totalHeight: 300,
        minPanelWidth: 111,
        maxPanelWidth: 911,
		easing: "easeOutBack",
		activeClass: 'current'
    });
}));
</script>
</head>
    <%
if(request.getParameter("msg")!=null){%>
    
  <script>alert('Registration Sucessfully..!')</script>
}  

<%}
if(request.getParameter("m1")!=null){%>

<script>alert('Login Failed..!')</script>
 <%
}
%>
<body id="top">
<div id="header">
  <div class="wrapper">
    <div class="fl_left">
     
    
    </div>
      <div class="fl_right"><h1>Multilevel encryption enabled secure file storage on cloud</h1> </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div id="topbar">
  <div class="wrapper">
    <div id="topnav">
      <ul>
        <li><a href="index.jsp">Home</a></li>
        <li class="active"><a href="owner.jsp">Owner</a></li>
          
          
        <li><a href="user.jsp">User</a></li>
         
         <li><a href="#">About</a></li>
         
      </ul>
    </div>
  
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div id="featured_slide">
  <div class="wrapper">
    <div class="featured_content">
      <ul id="accordion">
        <li class="current">
          <div class="featured_box">
             <center><h1> Owner's Login</h1>
		
				
                        <center>
<form action="ownerlogact.jsp" method="post" >

            <table>
                <tr>
                    <td align="left"><font size="4" color="black"> User_Name: </font></td><td>
                        <input type="text" align="left" size="25" name="username"/>
                </tr>
               



                <tr>
                    <td align="right"><font size="4" color="black">Password:</font> </td><td> 
                        <input type="password" align="left" size="25" name="password"/></td>
                </tr>
                
               

                <tr>
                    <td>  
                        <font size="2" color="pink">
                            <input type="submit"  align="right" value='Submit' />
                           
                    </td>


                    <td>
                         
                        <font size="2" color="pink">
                            <input type="reset" align="left" value='Reset'  />
                      </center>              </td>
                                </tr>

<br><br><br>    
                            </table>
    New User???   <a href="ownerreg.jsp">Click Here</a> To Register <br></h
                        </center>
          </div>
          <div class="featured_tab"> <img src="img/login.png" alt="" />
            <p>Owner--Login</p>
          </div>
        </li>
      
       
          
        
      </ul>
    </div>
  </div>
</div>
<!-- ####################################################################################################### -->

<!-- ####################################################################################################### -->
<div id="container">
  <div class="wrapper">
    <div id="content">
      <h2>About Login </h2>
      
      <p>Please enter valid credentials to login</p>
      <p>If new registration, please click above</p>
      
    </div>
    <div id="column">
      <div class="holder">
        <h2>Facts!!!</h2>
        <ul id="latestnews">
          <li> <img class="imgl" src="img/cloud.jpg" alt="" />
            <p>Security at its Best: Encryption Solutions for Peace of Mind.</p>
          </li>
        </ul>
      </div>
    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->

<!-- ####################################################################################################### -->
<div id="copyright">
  <div class="wrapper">
    
     <p class="lf">Design & Developed by Harshad Dhane, KVSS Mallikarjuna, Ashirwad Sharma as part of the final year capstone project @SRM Univ AP, Summer-2023</p> <br class="clear" />
  </div>
</div>
</body>
</html>