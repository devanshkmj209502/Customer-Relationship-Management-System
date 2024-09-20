<%-- 
    Document   : adminhome
    Created on : 16 Oct, 2023, 8:51:17 PM
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
        <title>Customer Relationship Management</title>
        <link href="../css/bootstrap.css" rel="stylesheet"/>
        <script src="../js/bootstrap.bundle.js"></script>
    </head>
    <body>
        <div class="container">
            
            <jsp:include page="header.jsp"/>
                <div class="row">
                    <div class="col-sm-12" style="background-color:lightsteelblue;min-height: 600px;">
                        
                        <h2 style="color: blue;text-align: center;">Add News & Events</h2>
                        <form method="post" action="admincontroller.jsp" class="form-group">
                            <input type="hidden" name="page" value="adminhome" />
                            <table class="table table-bordered" style="width:70%;margin: auto;">
                                <tr>
                                    <td>Enter News</td>
                                    <td>
                                        <textarea name="newstext" class="form-control"placeholder="Enter News"required="true"></textarea>
                                    </td>
                                    
                                </tr>
                                <tr>
                                <td></td>
                                <td>
                                    <button type="submit" class="btn btn-success">Submit</button>  
                                </td>
                                </tr>
                                
                            </table>
                        </form>
                        <br/><br/>
                        <table class="table table-bordered" style="width:70%;margin: auto;">
                                <tr>
                                    <th>ID</th>
                                    <th>News</th>
                                    <th>Posted Date</th>
                                    <th>Delete Post</th>
                                    
                                </tr>
                                <%
    
                                  DbManager dm = new DbManager();
                                  String query="select * from news order by id desc;";
                                  ResultSet rs = dm.select(query);
                                  int i = 1;
                                  while(rs.next())
                                  {
                                      
                                  
                            %>
                            <tr>
                                <td><%out.print(i);%></td>
                                <td><%out.print(rs.getString("newstext"));%></td>
                                <td><%out.print(rs.getString("posteddate"));%></td>
                                <td>
                                     <a href="deletenews.jsp?id=<%=rs.getInt("id")%>">
                                        <button type="button" class="btn btn-outline-danger">Delete</button>
                                     </a>
                                </td>
                            </tr>
                            <%
                                  i++;
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