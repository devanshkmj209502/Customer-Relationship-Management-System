<%-- 
    Document   : index
    Created on : 05-Oct-2023, 8:09:21 pm
    Author     : devro
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="connect.DbManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer Relationship Mangement</title>
        <link href="css/bootstrap.css" rel="stylesheet">
        <script src="js/bootstrap.bundle.js"></script>
    </head>
    <body>
        <div class="container">
            <jsp:include page="header.jsp"/>


            <div class="row">
                <div class="col-sm-4" style=" background-color:lightskyblue; min-height:600px;">
                    <jsp:include page="news.jsp"/>  
                </div> 
                <div class="col-sm-8"style=" background-color:pink; min-height:600px;">
                    <div class="row">
                        <p style="text-align:center;font-style:italic; font-size:35px;">
                            <b> “Build and develop long-term client relationships by creating personalised experiences across all touch-points, anticipating customer needs, and providing customised offers.”</b>
                        </p>
                    </div>
                    <div class="row">
                        <p style="text-align:left;font-style:italic; font-size:25px;">
                            <b><u>Our Top Brands:<u></b> 
                        </p>  
                    </div>
                    <br>
                    <br>
                    <br>
                    <div class="row">
                        <div class="col-sm-4"style="background-color:pink; min-height: 200px;">
                            <img src="images/mankind.png">  
                        </div>
                        <div class="col-sm-4"style="background-color:pink; min-height: 200px;">
                            <img src="images/cipla.png">
                        </div>
                        <div class="col-sm-4"style="background-color:pink; min-height: 200px;">
                          <img src="images/smart.png">
                        </div>
                    </div>
            </div>
            <jsp:include page="footer.jsp"/>      
        </div>
    </body>
</html>
