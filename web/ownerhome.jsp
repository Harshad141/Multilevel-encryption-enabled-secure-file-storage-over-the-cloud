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
    
 <script>alert('Login Sucessfully..!')</script>
 

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
      <div class="fl_right"><h1>Secure File Storage on Cloud Using Hybrid Cryptography</h1> </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div id="topbar">
  <div class="wrapper">
    <div id="topnav">
      <ul>
        <li class="active"><a href="ownerhome.jsp">Home</a></li>
        <li><a href="fileupload.jsp">File upload</a></li>
        <li><a href="ownerviewfiles.jsp">View Files</a></li>
       <li><a href="viewencfiles.jsp">View Split Data</a></li>
        <li><a href="vuserreq.jsp">View Request</a></li>
        <li><a href="logout.jsp">logout</a></li>
        
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
            <h2>Secure Cloud storage solutions/h2>
            <p>Recent news reveal a powerful attacker which breaks data confidentiality by acquiring cryptographic keys, by
means of coercion or back doors in cryptographic software. Once the encryption key is exposed, the only viable measure to
preserve data confidentiality is to limit the attacker?s access to the ciphertext.</p>
           
          </div>
          <div class="featured_tab"> <img src="img/architecture.jpg" alt="" />
              
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
      <h2>About This </h2>
      <p>Accelerate Your Digital Transformation: Embrace Cloud Solutions for Agile Growth.</p>
      
      
    </div>
    <div id="column">
      <div class="holder">
        <h2>Facts!!!</h2>
        <ul id="latestnews">
          <li> <img class="imgl" src="img/cloud.jpg" alt="" />
            <p>Confidentiality is Key: Unlocking the Benefits of Encryption</p>
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
    
   <p class="lf">Design & Developed by Harshad Dhane, KVSS Mallikarjuna, Ashirwad Sharma as part of the final year capstone project @SRM Univ AP, Summer-2023</p>  <br class="clear" />
  </div>
</div>
</body>
</html>