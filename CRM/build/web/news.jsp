<%-- 
    Document   : news
    Created on : 20 Oct, 2023, 9:01:28 PM
    Author     : devro
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="connect.DbManager"%>
<br/>
<b><h3 style="text-align: center; color:blue">News & Events</h3></b>
<marquee direction="up" height="600" behavior="alternate" onmouseover="stop()" onmouseout="start()">
                        
                             <%
    
                                  DbManager dm = new DbManager();
                                  String query="select * from news order by id desc;";
                                  ResultSet rs = dm.select(query);
                                  int i = 1;
                                  while(rs.next())
                                  {
                                      
                                  
                             %>
                             <p style="text-align: center;color:red; font-size:35px"><%out.print(rs.getString("newstext"));%></p>
                              
                             <%
                                  i++;
                                  }
                             %>
                        
                    </marquee>