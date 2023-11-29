<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<html>
    <head>
        <title>Retrieve and display data</title>
    </head>
    <body>
        <%
        Connection connect = null;
        Statement statement = null;
        try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/userdb?zeroDateTimeBehavior=CONVERT_TO_NULL","root", "");
        statement = connect.createStatement();
        String sql = "SELECT * FROM users ORDER BY id ASC";
        ResultSet resultSet = statement.executeQuery(sql);
        %>
        <table width="500" border="1">
            <tr>
                <td>Id</td>
                <td>First Name</td>
                <td>Last Name</td>
                <td>Email</td>
            </tr>
            <%while((resultSet!=null) && (resultSet.next())) { %>
            <tr>
                <td><div align="center"><%=resultSet.getString("id")%></div></td>
                <td><%=resultSet.getString("first_name")%></td>
                <td><%=resultSet.getString("last_name")%></td>
                <td><%=resultSet.getString("email")%></td>
            </tr>
            <%}%>
        </table> 
        <%
       } catch (Exception e) {
       // TODO Auto-generated catch block
       out.println(e.getMessage());
       e.printStackTrace();
       }
       try {
       if(statement!=null){
       statement.close();
       connect.close();
       }
       } catch (SQLException e) {
       // TODO Auto-generated catch block
       out.println(e.getMessage());
       e.printStackTrace();
       }
        %>
    </body>
</html>