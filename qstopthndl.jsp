 <%@ page import="java.sql.* , java.util.*" %>
<%
    Connection con;
    Statement s;
    
    try 
    {
         String cTitle=request.getParameter("name");
         int intTextBox=0;
         int i=0;
         while(true){
             //out.println(cTitle);
             intTextBox++;
             String name=request.getParameter("tb_"+intTextBox);
            // out.println(name);
             if(name!=null){
                 Class.forName("com.mysql.jdbc.Driver");
         
         con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","pass");
         
         String ins_sql="insert into qstoptions(title,optionss) values('"+cTitle+"','"+name+"')";
         
         s=con.createStatement();
         
         
         i=s.executeUpdate(ins_sql);
             }
             else{
          
          break;
      }
   }
       
         if(i>0)
         {%>
        
                 <script language="javascript">
                     alert("You Have Successfully Posted the Options And The Question.");
                     window.location.href="adminmenu.jsp";
                 </script>
            
        
         
         <%
          }
         else
         {%>
             <script language="javascript">
                     alert("Sorry..! Try Again.");
                     window.location.href="qstoptions.jsp";
                 </script>
             <% }
    }catch(Exception e)
    {
        out.println(e);
    }
    %>
    
