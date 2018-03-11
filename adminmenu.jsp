<%-- 
    Document   : register
    Created on : Nov 23, 2014, 3:59:39 PM
    Author     : shrikantha
--%>
<%
    if(session==null)
        response.sendRedirect("index.html");
    //try{
    //   String str=session.getAttribute("theName").toString()+"a";
  // }
  // catch(Exception e){
   //    response.sendRedirect("index.html");
   //}
    %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/style.css">
<title>WELCOME TO MULTI VOTING PANEL </title>

 <!-- menu begins-->
  <link href="css/menu.css" rel="stylesheet" type="text/css" />
<!-- menu ends-->
<!-- favicon generator begins--->
<!--<link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico">
<!-- favicon generator ends-->
<style type="text/css">
<!--
.style1 {color: #000099}
-->
</style>
</head>
<body>
<!-- container begins-->
 <div class="container">
   <!-- header begins-->
     <div class="header">
        <div class="head">
           <!-- head left begins-->
             <div class="headleft">
              <a href="index.html"><img src="images/logo.png" /></a>
             </div>
           <!-- head left ends-->
          
          <!-- head right begins-->
          <div class="headright">
          <!-- head top begins-->
           <div class="headtop">
               <!-- contact begins-->
               
             <!-- contact ends-->
            <!-- contact begins-->
           <div class="contact">
                <a href="logout.jsp"><img src="images/login.png" /></a>
              <a href="logout.jsp"> <p>Logout</p></a> 
          </div>
         <!-- contact ends-->
        </div>
      <!-- head top ends-->
      <!-- head bottom begins-->
        <div class="headbottom">
           <!-- menu begins-->
            <div class="menu">
               <ul id="nav">
                   <li><a href="activecalls.jsp">Active Calls</a>
              </li>
            <li><a href="initiatedcalls.jsp">Initiated Calls</a>
            </li>
            <li><a href="completedcalls.jsp">Completed Calls</a>
            </li>
                   <li><a href="question.jsp">Ask A Question</a>
                   </li
          </ul> 
                
                
                
        </div>
      <!-- menu ends-->
        </div>
      <!-- head bottom ends-->
          </div>
         <!-- head right ends-->
         <div class="clear"></div>
        </div>
     </div>
   <!-- header ends-->
    <!-- content begins-->
    <div class="content">
      <h1 id="about">Team Leader</h1><div class="clear"></div><hr class="hr1" />
      <!---->
      <h1 style=" color: black"><b><center>WELCOME <%= session.getAttribute("theName") %></center></b></h1>
      <br/>
      <br/>
      <br/>
      <br/>
      <br/>
      <br/>
      <br/>
      <br/>
      <br/>
      <br/>
      <br/>
      <br/>
      <br/>
      <br/>
      <br/>
      <br/>
      <br/>
      <br/>
      <br/>
      <br/>
      <br/>
      <br/>
      <br/>
      <br/>
   
   <div class="clear"></div>
    </div>
     <!-- content ends-->
    <!-- footer begins-->
   
        <div class="footer">
          <div class="foot">
               <!-- copy right box begins-->
        <!--<div class="copyrightbox">
           <h1>Copy Rights Reserved At  @2014 <span class="style1">SquareFour</span>Technologies. </h1>
          </div>
      <!-- copy right box ends-->    
   <!-- share box begins-->
          <div class="sharebox">
          <h1>Share With Us</h1>
         <a href="#"> <img src="images/facebook.png" /></a>
          <a href="#"> <img src="images/twitter.png" /></a>
         <a href="#"> <img src="images/linkedin.png" /></a>
          </div>
        <!-- share box ends-->
          </div>
          <div class="clear"></div>
        </div>
     <!-- footer ends-->
      <div class="clear"></div>
   </div>
<!-- container ends-->

</body>
</html>

    </body>
</html>
