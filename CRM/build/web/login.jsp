<%-- 
    Document   : index
    Created on : 05-Oct-2023, 8:09:21 pm
    Author     : devro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>>Customer Relationship Management</title>
        <link href="css/bootstrap.css" rel="stylesheet">
        <script src="js/bootstrap.bundle.js"></script>
    </head>
    <body>
        <div class="container">
            <jsp:include page="header.jsp"/>
            
            
            <div class="row">
                <div class="col-sm-4" style=" background-color:lightskyblue; min-height:600px;"><jsp:include page="news.jsp"/>  </div> 
                <div class="col-sm-8"style=" background-color:pink; min-height:600px;">
                    
                    <h2 style="color:blue;text-align:center;">Login</h2>
                    <form class="form-group" method="post" action="controller.jsp">
                        <table class=" table table-bordered">
                            <input type="hidden" name="page" value="login" />
                            <tr>
                                <td>User ID</td>  
                                <td>
                                    <input type="text" name="userid" class="form-control" placeholder="Enter Your User Id" required/>
                                </td>
                            </tr>
                            
                            <tr>
                                <td>Password</td> 
                                <td>
                                  <input type="password" name="password" class="form-control"placeholder="Enter Your Password" required /> 
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
                </div>
   </div>
            <jsp:include page="footer.jsp"/>      
   </div>
    </body>
</html>
