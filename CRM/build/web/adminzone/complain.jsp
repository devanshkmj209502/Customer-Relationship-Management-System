<%-- 
    Document   : complain
    Created on : 18 Oct, 2023, 8:15:34 PM
    Author     : devro
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="connect.DbManager"%>
<%
 if(session.getAttribute("adminid")== null)
{
    response.sendRedirect("../login.jsp");
}
else
{
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Complain Management</title>
        <link href="../css/bootstrap.css" rel="stylesheet"/>
        <script src="../js/bootstrap.bundle.js"></script>
    </head>
    <body>
        <div class="container">
            
            <jsp:include page="header.jsp"/>
                <div class="row">
                    <div class="col-sm-12" style="background-color:lightsteelblue;min-height: 600px;">
                        <h2 style="color:blue;text-align: center;">Complain Management</h2>
                        <table class="table table-bordered">
                            <tr>
                                <th>ID</th>
                                
                                <th>Name</th>
                                
                                <th>Contact No.</th>
                                
                                <th>Email Address</th>
                                
                                <th>Response Type</th>
                                
                                <th>Subject</th>
                                
                                <th>Complain Text</th>
                                
                                <th>Complain Date</th>
                                
                                <th>Delete Complain</th>
                            </tr>
                            <%
    
                                  DbManager dm = new DbManager();
                                  String query="select * from response;";
                                  ResultSet rs = dm.select(query);
                                  while(rs.next())
                                  {
                                      
                                  if(rs.getString("responsetype").equals("complain"))
                                  {
                            %>
                            <tr>
                                <td><%out.print(rs.getString("id"));%></td>
                                <td><%out.print(rs.getString("name"));%></td>
                                <td><%out.print(rs.getString("contactno"));%></td>
                                <td><%out.print(rs.getString("emailaddress"));%></td>
                                <td><%out.print(rs.getString("responsetype"));%></td>
                                <td><%out.print(rs.getString("subject"));%></td>
                                <td><%out.print(rs.getString("responsetext"));%></td>
                                <td><%out.print(rs.getString("responsedate"));%></td>
                                <td>
                                     <a href="deletecomplaint.jsp?id=<%=rs.getInt("id")%>">
                                        <button type="button" class="btn btn-outline-danger">Delete</button>
                                     </a>
                                </td>
                            </tr>
                            <%
                                  }
                                  }
                            %>
                            
                        </table>
                        
                    </div> 
                    
                </div>
              <jsp:include page="footer.jsp"/>
            
        </div>
    </body>
</html>
<%
}
%>