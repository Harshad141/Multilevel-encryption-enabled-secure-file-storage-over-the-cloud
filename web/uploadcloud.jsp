<%@page import="action.decryption"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="action.Dbconnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>





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
        <li><a href="ownerhome.jsp">Home</a></li>
        <li><a href="fileupload.jsp">file upload</a></li>
        <li><a href="ownerviewfiles.jsp">View Files</a></li>
       <li class="active"><a href="upload.jsp">upload to cloud</a></li>
        <li><a href="owner.jsp">logout</a></li>
        
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
                              String owner = request.getParameter("owner");
                            String[] filedetails = request.getQueryString().split(",");
                            String filename = null;
                             String privatekey = null;
                           // String owner = null;
                            InputStream is = null;
                              String  Input = null;
                            Connection con = Dbconnection.getConnection();
                            Statement st = con.createStatement();
                            ResultSet rt = st.executeQuery("select * from keygen where filename='" + filedetails[0] + "'");
                            if (rt.next()) {
                                filename = rt.getString("filename");
                                owner = rt.getString("owner");
                                 privatekey = rt.getString("privatekey");
                                //keyword =rt.getString("keyword");
                                Input =  rt.getString("data");
                            } else {
                                out.println("error while retreiving data");
                            }
                           // BufferedReader br = new BufferedReader(new InputStreamReader(is));
                          //  String temp = null;
                          //  StringBuffer sb = new StringBuffer();
                         //   while ((temp = br.readLine()) != null) {
                         //       sb.append(temp + "\n");
                          //  }
                            //String content = new decryption().decrypt(sb.toString(), fkey);
                        %>
          
                        <form name="f2" action="encrypt1" method="post" enctype="multipart/form-data"style="margin-right:  50px">
                           
                            
                            
                             <form name="f2" action="encrypt1" method="post" enctype="multipart/form-data"style="margin-right:  50px">
                         &nbsp;&nbsp;&nbsp;&nbsp;   <label style="font-size: 16px">File Name:&nbsp;&nbsp;&nbsp;&nbsp;</label><input class="textbox" type="text" value="<%=filename%>" readonly="" name="filename" style="margin-left: 58px;width: 150px" /><br /><br />
                          
                       &nbsp;&nbsp;&nbsp;       <label style="font-size: 16px">Private Key:&nbsp;&nbsp;</label><input class="textbox" type="text" value="<%=privatekey%>" readonly="" name="privatekey" style="margin-left: 58px;width: 150px" /><br /><br />
                       &nbsp;&nbsp;&nbsp;       <label style="font-size: 16px">Owner Name:</label><input class="textbox" type="text" value="<%=owner%>" readonly="" name="owner" style="margin-left: 58px;width: 150px" /><br /><br /><br>
                             
                            &nbsp;&nbsp;       <label style="font-size: 16px">File Content : </label><input class="textbox" type="text" name="modify" value="<%=Input%>" readonly="" style="margin-left: 58px;width: 150px"></textarea><br><br><br><br>
                           
                             
                            
                            
                            <input type="submit" value="Upload" class="button" style="margin-left: 110px;margin-top: -10px;width: 100px;" />
                        </form> 
                    </center>
                    
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
      <p>Accelerate Your Digital Transformation: Embrace Cloud Solutions for Agile Growth.</p>
      
      
    </div>
    <div id="column">
      <div class="holder">
        <h2>Facts!!!</h2>
        <ul id="latestnews">
          <li> <img class="imgl" src="img/cloud.jpg" alt="" />
            <p>Encryption Made Easy: Securing Your Data with User-Friendly Solution.</p>
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