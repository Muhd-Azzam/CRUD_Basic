<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<html>
    <head>
        <title>Insert data</title>
    </head>
    <body>
        <%
        String first_name=request.getParameter("first_name");
        String last_name=request.getParameter("last_name");
        String email=request.getParameter("email");
        
        try
        {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/userdb?zeroDateTimeBehavior=CONVERT_TO_NULL","root", "");
        Statement st=conn.createStatement();
        int i=st.executeUpdate("insert into users(first_name,last_name,email)values('"+first_name+"','"+last_name+"', ' "+email+"')");
        out.println("Data is successfully inserted!");
        }
        catch(Exception e)
        {
        System.out.print(e);
        e.printStackTrace();
        }
        %>
    </body>
</html>