<%-- 
    Document   : search
    Created on : 28/05/2020, 4:06:39 PM
    Author     : blue
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>




<!DOCTYPE html>
<html>
<body> 
    <form method="post" action="header.jsp">
 <head>
        <title>Catalogue Search Result</title>
        <link href="css/style.css" type="text/css" rel="stylesheet"/>
    </head>
    </head>

    <center>    
        <table border="1" width="50%" height="50%">
            <th>Product ID</font>
            <th>Product Name</font></th>
            <th>Product Type</font></th>
            <th>Product Description</font></th>
            <th>Product Price</font></th>
            <th>Product Stock</font></th>
            <th>Product Release Date</font></th>
                <%
                    Class.forName("org.apache.derby.jdbc.ClientDriver");
                    Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/catalogue", "catalogue", "catalogue");
                    Statement st = con.createStatement();
                    ResultSet rs;
                    PreparedStatement ps = con.prepareStatement("select * from catalogue where producttype = ?");
                    ps.setString(1, request.getParameter("producttype"));
                    rs = ps.executeQuery();
                    while (rs.next()) {
                     out.println("<tr>");
                     out.println("<td>" + rs.getString("productid") + "<input type='hidden' name='id' value='" + rs.getString("PRODUCTID") + "'></td>");
                     out.println("<td>" + rs.getString("productname") + "<input type='hidden' name='id' value='" + rs.getString("PRODUCTNAME") + "'></td>");
                     out.println("<td>" + rs.getString("producttype") + "<input type='hidden' name='id' value='" + rs.getString("producttype") + "'></td>");
                     out.println("<td>" + rs.getString("productdescription") + "<input type='hidden' name='id' value='" + rs.getString("productdescription") + "'></td>");
                     out.println("<td>" + rs.getString("productprice") + "<input type='hidden' name='id' value='" + rs.getString("productprice") + "'></td>");
                     out.println("<td>" + rs.getString("productstock") + "<input type='hidden' name='id' value='" + rs.getString("productstock") + "'></td>");
                     out.println("<td>" + rs.getString("productreleasedate") + "<input type='hidden' name='id' value='" + rs.getString("productreleasedate") + "'></td>");
                    }
                    st.close();
                %>
                </center>
        </table>
        <br>  <br><a href='index.jsp'>Back to Index</a>
</form>
</body> 
<jsp:include page="/footer.jsp"/>
</html>