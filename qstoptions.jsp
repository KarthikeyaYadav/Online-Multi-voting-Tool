<!DOCTYPE html>
<%@page import="java.sql.*" %>
<%
                  Connection con;
                  PreparedStatement ps;
                  ResultSet rs;
                  
                 
                      /* Class.forName("com.mysql.jdbc.Driver");
                       con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","pass");
                       String selsql="select name from teammemreg";
                       ps=con.prepareStatement(selsql);
                       rs=ps.executeQuery();*/
                       %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOGIN PANEL MULTI VOTING</title>
        <script>
            var intTextBox = 0;
            function addElement() {
    intTextBox++;
    var objNewDiv = document.createElement('div');
    objNewDiv.setAttribute('id', 'div_' + intTextBox);
    objNewDiv.innerHTML = 'Option ' + intTextBox + ': <input type="text" id="tb_' + intTextBox + '" name="tb_' + intTextBox + '"/>';
    document.getElementById('content').appendChild(objNewDiv);
}
function removeElement() {
    if(0 < intTextBox) {
        document.getElementById('content').removeChild(document.getElementById('div_' + intTextBox));
        intTextBox--;
    } else {
        alert("No textbox to remove");
    }
}
        </script>
    </head>
    <body>
        <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/style.css">
<title>QUESTION OPTIONS FORM</title>

 <!-- menu begins-->
  <link href="css/menu.css" rel="stylesheet" type="text/css" />
<!-- menu ends-->
<!-- favicon generator begins--->
<!--<link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico">-->
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
              <a href="index.html">  <a href="index.html"><h2>MULTI VOTING LOGIN PANEL<h2> </a></a>
             </div>
           <!-- head left ends-->
          
          <!-- head right begins-->
          <div class="headright">
          <!-- head top begins-->
           <div class="headtop">
               <!-- contact begins-->
               <div class="contact">
                <a href="index.html"><img src="images/login.png" /></a>
              <a href="index.html"> <p>Logout</p></a> 
          </div>
             <!-- contact ends-->
            <!-- contact begins-->
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
      <h1 id="about">Question Options</h1><div class="clear"></div><hr class="hr1" />
      <!-- login left begins-->
      <div class="loginleft">
    
      <!-- registration box begins-->
      <div class="registrationbox">
            
              <p><b>Question Options:</b></p>
               <form action="qstopthndl.jsp" method="post" name="form">
                   <span>Title: </span><input type="text" name="name" /><div class="clear"></div><br>
                   <center>
                       
                       <a href="javascript:void(0);" onclick="addElement();">Add Option</a><br>
                       <a href="javascript:void(0);" onclick="removeElement();">Remove Option</a>

                       <div id="content"></div>
                   </center>
                 <span>&nbsp;</span><input type="submit" name="submit" value="Submit"/>
                 <input type="reset" name="clear" value="Clear" />
                 
                                        
          </form>
             
           </div>
         <!-- registration  box ends-->
     </div>
    <!-- login left ends-->
    <!-- login right begins-->
     <div class="loginright">
      <img src="images/options.jpg" />
     </div>
    <!-- login right ends-->
   <div class="clear"></div>
    </div>
     <!-- content ends-->
    <!-- footer begins-->
        <div class="footer">
          <div class="foot">
               <!-- copy right box begins-->
       <!-- <div class="copyrightbox">
           <h1>Copy Rights Reserved At  @2014 <span class="style1">SquareFour</span>Technologies. </h1>
          </div>-->
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
