<!DOCTYPE html>
<%@page import="java.sql.*" %>
<%
                  Connection con;
                  PreparedStatement ps;
                  ResultSet rs,rs1;
                 
                       Class.forName("com.mysql.jdbc.Driver");
                       con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","pass");
                       String namee= session.getAttribute("theName").toString() ;
                       String selsql="select * from qstdetails where title in(select title from qstmem where name=?) and end_date >= CURRENT_DATE()";
                       
                       ps=con.prepareStatement(selsql);
                       ps.setString(1,namee);
                       rs=ps.executeQuery();
                       %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOGIN PANEL MULTI VOTING</title>
        <style>
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
th, td {
    padding: 10px;
}
</style>
                <script language="javascript">
    function check()
    {
        

        var cname=document.form.name.value;
        
        //var cinternship=document.form.internship.value;
       // var cdescription=document.form.description.value;
        
        if(cname=="")
        {
            alert("please enter name");
            document.form.name.focus();
            return false;
        }  
        return true;
    }
</script>
    </head>
    <body>
        <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/style.css">
<title>ACTIVE CALLS</title>

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
                   <li><a href="activecallsm.jsp">Active Calls</a>
              </li>
            
            <li><a href="completedcallsm.jsp">Completed Calls</a>
            </li>
                   
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
   <br>
       <br>
   <!-- header ends-->
    <!-- content begins-->
    <center>
    <table style="width:90%">
  <tr>
    <th>Title</th>
    <th>Objective</th>
    <th>Asked By</th>
    <th>Max Votes</th>
    <th>End Date</th>
    <th>Status</th>
  </tr>
                      <%
                       while(rs.next())
{
    Class.forName("com.mysql.jdbc.Driver");
                       con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","pass");
                       //String namee= session.getAttribute("theName").toString() ;
                       String tit=rs.getString("title").toString();
                      String  selsql1="select status from qstmem where title=? and name=?";
                       
                       ps=con.prepareStatement(selsql1);
                       ps.setString(1,tit);
                       ps.setString(2,namee);
                       rs1=ps.executeQuery();
                       while(rs1.next()){
                           String test=rs1.getString("status").toString();
                           String status=" ";
     if(test.equals("A")){
         status="Answered";
}
else{
         status="Not Answered";
}
%>
<tr>
    <td><%= rs.getString("title") %></td>
    <td><%= rs.getString("objective") %></td>
    <td><%= rs.getString("askedby") %></td>
    <td><%= rs.getString("max_votes") %></td>
    <td><%= rs.getString("end_date") %></td>
    <td><%= status %></td>
</tr>
<%
}
}
%>
    </table>
    </center>
    <br>
        <br>
    <div class="content">
      <h1 id="about">Vote A Question</h1><div class="clear"></div><hr class="hr1" />
      <!-- login left begins-->
      <div class="loginleft">
    
      <!-- registration box begins-->
           <div class="registrationbox">
            
              <p><b>Enter the Question Title To Vote:</b></p>
               <form action="qstvotem.jsp" method="post" name="form">
                 <span>Title: </span><input type="text" name="name" /><div class="clear"></div>
                 <span>&nbsp;</span><input type="submit" name="submit" value="Submit"  onclick="return check();"/>
                 <input type="reset" name="clear" value="Clear" />
                 
                                        
          </form>
           </div>
      </div>
      <div class="loginright">
      <img src="images/vote.jpg" />
     </div>
    <!-- login right ends-->
   <div class="clear"></div>
    </div>
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
