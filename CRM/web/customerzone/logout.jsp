<%-- 
    Document   : logout
    Created on : 13 Oct, 2023, 8:34:06 PM
    Author     : devro
--%>
<%

session.invalidate();

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout</title>
        <script>
            function logout()
            {
                window.history.forward();
                window.setTimeout("window.location.href='../login.jsp'",1000);
            }
            logout();
        </script>
    </head>
    <body style="font-size: 150px;text-align: center">
        
        You have been sucessfully logged out!
    </body>
</html>
