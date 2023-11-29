<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<html>
<head>
<title>Delete data</title>
</head>
<body>
<%
Connection connect = null;
Statement statement = null;
try {
Class.forName("com.mysql.cj.jdbc.Driver");
Class.forName("com.mysql.cj.jdbc.Driver");
connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/userdb?zeroDateTimeBehavior=CONVERT_TO_NULL","root", "");
statement = connect.createStatement();
String sql = "DELETE FROM users " + " WHERE id = '2' ";
 statement.execute(sql);
 
 out.println("Record Delete Successfully");
} catch (Exception e) {
// TODO Auto-generated catch block
out.println(e.getMessage());
e.printStackTrace();
}
try {
if(statement != null) {
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