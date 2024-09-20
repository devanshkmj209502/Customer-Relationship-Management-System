<%-- 
    Document   : customerhome
    Created on : 12 Oct, 2023, 8:17:49 PM
    Author     : Softpro
--%>
<%
    if (session.getAttribute("custid") == null) {
        response.sendRedirect("../login.jsp");
    } else {
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer Zone</title>
        <link href="../css/bootstrap.css" rel="stylesheet"/>
        <script src="../js/bootstrap.bundle.js"></script>
    </head>
    <body>
        <div class="container">
            <jsp:include page="header.jsp"/>
            <div class="row">
                <div class="col-sm-12" style="background-color:pink;min-height:600px;">
                    <h2 style="color:blue;text-align:center;">Change Password</h2>
                    <form class="form-group" method="post" action="custcontroller.jsp">
                        <input type="hidden" name="page" value="changepassword"/>
                        <table class="table table-bordered" style="width:60%;margin:auto;">
                            <tr>
                                <td>Enter Old Password</td>
                                <td>
                                    <input type="password" name="oldpassword" class="form-control" placeholder="Enter Your  Old Password"required/>
                                </td>
                            </tr>
                            <tr>
                                <td>Enter New Password</td>
                                <td>
                                    <input type="password" name="newpassword" class="form-control" placeholder="Enter Your New Password"required/>
                                </td>
                            </tr>
                            <tr>
                                <td> Enter Confirm Password</td>
                                <td>
                                    <input type="password" name="confirmpassword" class="form-control" placeholder="Enter Your Confirm Password" required/>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <button type="submit" class="btn btn-success">Change Password</button>
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
<%  }%>
