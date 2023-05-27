<%@page import="java.sql.*"%>
<%@page import="action.Dbconnection"%>
<%@ page session="true" %>


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
    
 <script>alert('Key Verified..!')</script>
 

<%}
if(request.getParameter("m1")!=null){%>

<script>alert('Key Verfifcation Failed..!')</script>
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
        <li><a href="user.jsp">Home</a></li>
       
        <li><a href="vf.jsp">View Files</a></li>
     <li class="active"><a href="download.jsp">Verify</a></li>
     
        <li><a href="user.jsp">Logout</a></li>
        
      </ul>
    </div><br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div id="featured_slide">
  <div class="wrapper">
    <div class="featured_content">
      <ul id="accordion">
        <li class="current">
          






            <br><br><br><br>




<% 
    
     HttpSession ses = request.getSession(true);
                String email = ses.getAttribute("email").toString();
                

try{ 
	
	Connection con=Dbconnection.getConnection();
       
	PreparedStatement pst=con.prepareStatement("select * from request where email = '"+email+"' and status = 'yes'");
   
	ResultSet rs=pst.executeQuery();
        %>
        
        <center>   <table style="width:90%" border="5">
         
  <tr>
  
    <th><font color="red">File Name</font> </th>
      
       
        <th><font color="red">Owner</font></th>
     
        
        <th><font color="red">download</font></th>
        
        

         
 </tr>
 
<%
       
	while(rs.next()){
            %><tr><th><%=rs.getString(1)%></th>
                   <th><%=rs.getString(3)%></th> 
                
               
               <th><a href="downloadact.jsp?<%=rs.getString(1)%>" >download</a></th> 
            
                
        </tr>
        
        
      <%  }
        
        %> </table>

<% }
	catch(Exception e)
	{
		System.out.println(e);
	}
	%>
        </center></div>
        
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
      <p>Seamless Scalability: Empower Your Business with Cloud Solutions that Grow with You.</p>
     
      
    </div>
    <div id="column">
      <div class="holder">
        <h2>facts!!!</h2>
        <ul id="latestnews">
          <li> <img class="imgl" src="img/cloud.jpg" alt="" />
            <p>Encryption Made Easy: Securing Your Data with User-Friendly Solutions.</p>
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