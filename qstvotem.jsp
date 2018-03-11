<%@ page import="java.sql.* , java.util.*" %>
<%
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    String cTitle=request.getParameter("name");
    session.setAttribute("theTitle",cTitle);
    String namee= session.getAttribute("theName").toString() ;
    Class.forName("com.mysql.jdbc.Driver");
         
         con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","pass");
         String selsql="select status from qstmem where title=? and name=? ";
         ps=con.prepareStatement(selsql);
                       ps.setString(1,cTitle);
                       ps.setString(2,namee);
                       rs=ps.executeQuery();
                       String status="s";
                       while(rs.next())
{
          status=rs.getString("status");
}
                       if(status.equals("A")){
                       %>
                       <script language="javascript">
                     alert("You Have Answered This Question.Please Select Another Option.");
                     window.location.href="activecallsm.jsp";
                 </script>
                 <%
                       }
else{
selsql="select max_votes from qstdetails where title=?";
ps=con.prepareStatement(selsql);
                       ps.setString(1,cTitle);
rs=ps.executeQuery();
int mvote=0;
while(rs.next()){
mvote=Integer.parseInt(rs.getString("max_votes"));
}
session.setAttribute("theVote", mvote);
selsql="select optionss from qstoptions where title=?";
ps=con.prepareStatement(selsql);
                       ps.setString(1,cTitle);
rs=ps.executeQuery();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>OPTIONS PANEL MULTI VOTING</title>
    </head>
    <body>
        <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/style.css">
<title>OPTIONS FORM</title>
<script type="text/javascript">
function limit_checkbox(name,obj,max)
   {
   var count=0;
   var x=document.getElementsByName(name);
   for (var i=0; i < x.length; i++)
      {
      if(x[i].checked)
	     {
         count = count + 1;
		 }
	  }	
   if (count > max)
	  {
	  alert('Please select only ' + max + ' options.\
To select this option unselect one of the others.');
	  obj.checked = false;
      }
   }
</script>
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
   <!-- header ends-->
    <!-- content begins-->
    <div class="content">
      <h1 id="about">OPTIONS:</h1><div class="clear"></div><hr class="hr1" />
      <center>
          <h2><b>You Can Vote Maximum of <%= session.getAttribute("theVote") %> votes</b></h2>
          
      </center>
      <!-- login left begins-->
      <div class="loginleft">
    
      <!-- registration box begins-->
           <div>
            
              <p><b>Check The Options You Choose To Vote:</b></p>
               <form action="qstvotehndlm.jsp" method="post" name="form">
                   
                 <span>OPTIONS: </span><div>
                 <%
                       while(rs.next())
{
%>
<input type="checkbox" name="employee" value="<%= rs.getString("optionss") %>" onclick="limit_checkbox('employee',this,<%= session.getAttribute("theVote") %>)"><%= rs.getString("optionss") %>
<br/>
<%
}
%>
                 </div><br>
                 
                 <!--<form action="qstoptions.jsp" method="post" name="form1">
                     <span>Title: </span><input type="text" name="name" /><div class="clear"></div>
                     <span>Add Options: </span><input type="text" name="name" /><div class="clear"></div>
                     <span>&nbsp;</span><input type="submit" name="submit" value="Submit"/>
                 <input type="reset" name="clear" value="Clear" />
                 </form>-->
                 
                 <div class="clear"></div>
                 <span>&nbsp;</span><input type="submit" name="submit" value="Submit"/>
                 <input type="reset" name="clear" value="Clear" />
                 
                                        
          </form>
             
           </div>
         <!-- registration  box ends-->
     </div>
    <!-- login left ends-->
    <!-- login right begins-->
     <div class="loginright">
      <img src="images/vote-button.jpg" />
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

<%
}
%>
                       
    
