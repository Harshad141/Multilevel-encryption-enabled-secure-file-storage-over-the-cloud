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
         <li><a href="cloudahome.jsp">Home</a></li>
       
        <li><a href="cloudaviewfiles.jsp">View Files</a></li>
        <li class="active"><a href="splita.jsp">Split Files</a></li>
       
        <li><a href="clouda.jsp">logout</a></li>
        
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
                String user = ses.getAttribute("user").toString();
                

try{ 
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/securedata","root","root");
        System.out.println("2");
	PreparedStatement pst=con.prepareStatement("select * from cloudadata ");
   
	ResultSet rs=pst.executeQuery();
        %>
        
        <center>   <table style="width:80%" border="5">
         
  <tr>
    <th><font color="red">Owner</font></font></th>
    <th><font color="red">File Name</font> </th>
       
       
        <th><font color="red">Split Part</font></th>

         
 </tr>
 
<%
       
	while(rs.next()){
            %><tr><th><%=rs.getString(3)%></th>
                <th><%=rs.getString(1)%></th>
              
                 <th><%=rs.getString(2)%></th>
               
                
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
      <p>Unleash Innovation: Embrace Cloud Solutions to Drive Business Transformation</a>.</p>
    
      
    </div>
    <div id="column">
      <div class="holder">
        <h2>Facts!!!</h2>
        <ul id="latestnews">
          <li> <img class="imgl" src="img/cloud.jpg" alt="" />
            <p>Confidentiality is Key: Unlocking the Benefits of Encryption.</p>
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