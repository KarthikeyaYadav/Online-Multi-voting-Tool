<%@page import="java.sql.*" %>
<%
                  Connection con;
                  PreparedStatement ps;
                  ResultSet rs;
                  try{
                       Class.forName("com.mysql.jdbc.Driver");
                       con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","pass");
                       String user_name=request.getParameter("Email");
                       String pass_word=request.getParameter("Password");
                       
                       String selsql="select count(*) from teammemreg where email=? and password=?";
                       ps=con.prepareStatement(selsql);
                       
                       ps.setString(1,user_name);
                       ps.setString(2,pass_word);
                       
                       int i=0;
                       rs=ps.executeQuery();
                       while(rs.next())
                       {
                          i=rs.getInt(1);
                          
                         
                       }
                       if(i>0){
                           
                        selsql="select name from teammemreg where email=?";
                           ps=con.prepareStatement(selsql);
                       ps.setString(1,user_name);
                       rs=ps.executeQuery();
                       while(rs.next())
                       {
                       String namee=rs.getString("name");
                       
                        session.setAttribute("theName", namee);
                        response.sendRedirect("telecallermenu.jsp");
                       }
                       }
                       else{%>
                           <script language="javascript">
                           alert("Invalid Username or Password. Try again");
                           window.location.href="telecallerlogin.html";
                       </script>
                       <%}
                       
                  }catch(Exception e)
                  {
                      out.println(e);
                  }
              %>