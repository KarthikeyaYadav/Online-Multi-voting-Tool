 <%@ page import="java.sql.* , java.util.*" %>
<%
    Connection con;
    PreparedStatement ps;
             int j=0;

    
    try 
    {
         String cTitle= session.getAttribute("theTitle").toString();
        //out.println(cTitle);
         String[] participants;
         participants = request.getParameterValues("employee");
         if (participants != null) 
   {
      for (int i = 0; i < participants.length; i++) 
      {
         //out.println ("<b>"+sports[i]+"<b>");
          String namee=participants[i];
          //out.println(namee);
          Class.forName("com.mysql.jdbc.Driver");
         
         con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","pass");
         //String status="NA";
         
         String sql="UPDATE qstoptions SET votes=votes+1 WHERE title='"+cTitle+"' and optionss='"+namee+"'";
         
         ps=con.prepareStatement(sql);
        // ps.setString(1,cTitle);
         //ps.setString(2,namee);
         j=ps.executeUpdate(sql);
      }
   }
        String name=session.getAttribute("theName").toString() ;
        String sql1="UPDATE qstmem SET status='A' WHERE title='"+cTitle+"' and name='"+name+"'";
        Class.forName("com.mysql.jdbc.Driver");
         
         con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","pass");
         ps=con.prepareStatement(sql1);
         //ps.setString(1,cTitle);
       // String name=session.getAttribute("theName").toString() ;
         //ps.setString(2,namee);
         ps.executeUpdate(sql1);
      session.removeAttribute("theTitle");
         if(j>0)
         {%>
        
                 <script language="javascript">
                     alert("You Have Successfully Completed Voting ");
                     window.location.href="activecalls.jsp";
                 </script>
            
        
         
         <%
          }
         else
         {%>
             <script language="javascript">
                     alert("Sorry..! Try Again.");
                     window.location.href="activecalls.jsp";
                 </script>
             <% }
    }catch(Exception e)
    {
        out.println(e);
    }
    %>
    
