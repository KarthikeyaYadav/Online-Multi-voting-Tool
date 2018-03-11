 <%@ page import="java.sql.* , java.util.*" %>
<%
    Connection con;
    Statement s;
    
    try 
    {
         java.util.Date d=new java.util.Date();
        
         java.text.SimpleDateFormat sdf=new java.text.SimpleDateFormat("YYYY-MM-dd");
        
         String cContacted=sdf.format(d);
         String cTitle=request.getParameter("name");
         String[] participants;
         participants = request.getParameterValues("employee");
         if (participants != null) 
   {
      for (int i = 0; i < participants.length; i++) 
      {
         //out.println ("<b>"+sports[i]+"<b>");
          String name=participants[i];
          Class.forName("com.mysql.jdbc.Driver");
         
         con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","pass");
         String status="NA";
         
         String ins_sql="insert into qstmem values('"+cTitle+"','"+name+"','"+status+"')";
         
         s=con.createStatement();
         
         int j=0;
         j=s.executeUpdate(ins_sql);
      }
   }
        
         
         
         String cObj=request.getParameter("email");
         
        
               
            
            
         String cmaxv=request.getParameter("maxvotes");

         
         
         String cBirth=request.getParameter("dob");
         String leader=session.getAttribute("theName").toString() ;
        
         
         Class.forName("com.mysql.jdbc.Driver");
         
         con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","pass");
         
         String ins_sql="insert into qstdetails values('"+cTitle+"','"+cObj+"','"+cmaxv+"','"+cBirth+"','"+cContacted+"','"+leader+"')";
         
         s=con.createStatement();
         
         int i=0;
         i=s.executeUpdate(ins_sql);
         
      
         if(i>0)
         {%>
        
                 <script language="javascript">
                     alert("You Have Successfully Posted the Question.Give the Options for the Question");
                     window.location.href="qstoptions.jsp";
                 </script>
            
        
         
         <%
          }
         else
         {%>
             <script language="javascript">
                     alert("Sorry..! Try Again.");
                     window.location.href="question.jsp";
                 </script>
             <% }
    }catch(Exception e)
    {
        out.println(e);
    }
    %>
    
