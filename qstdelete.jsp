<!DOCTYPE html>
<%@page import="java.sql.*" %>
<%
                  Connection con;
                  PreparedStatement ps;
                  ResultSet rs;
                 
                       Class.forName("com.mysql.jdbc.Driver");
                       con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","pass");
                       String cTitle=request.getParameter("name");
                       String name=session.getAttribute("theName").toString() ;
                       String selsql="select title from qstdetails where askedby=? ";
                       
                       ps=con.prepareStatement(selsql);
                       ps.setString(1,name);
                       rs=ps.executeQuery();
                       int j=0;
                       while(rs.next()){
                           if(cTitle.equals(rs.getString("title"))){
                               j=1;
                               break;
                           }
                       }
                       if(j==0){
                           %>
        
                 <script language="javascript">
                     alert("Please enter the Title that you have Initialised.");
                     window.location.href="initiatedcalls.jsp";
                 </script>
         <%
                       }
else{
selsql="delete from qstdetails where title=?";
ps=con.prepareStatement(selsql);
                       ps.setString(1,cTitle);
                       ps.executeUpdate();
selsql="delete from qstmem where title=?";
ps=con.prepareStatement(selsql);
                       ps.setString(1,cTitle);
                       ps.executeUpdate();
selsql="delete from qstoptions where title=?";
ps=con.prepareStatement(selsql);
                       ps.setString(1,cTitle);
                       j=ps.executeUpdate();
if(j>0){
%>
             <script language="javascript">
                     alert("Question is Deleted Successfully.");
                     window.location.href="adminmenu.jsp";
                 </script>
             <%
}
else{
%>
             <script language="javascript">
                     alert("Sorry..! Try Again.");
                     window.location.href="initiatedcalls.jsp";
                 </script>
             <%
}

}
                       %>