<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<html>
    <head>
        <title>Create Data</title>
    </head>
    <body>
        <form name="insert" action="process.jsp" method="post">
            <table>
                <tr>
                    <td>First Name:</td>
                    <td><input type="text" class="width" name="first_name" /></td>
                </tr>
                <tr>
                    <td>Last Name:</td>
                    <td><input type="text" class="width" name="last_name" /></td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td><input type="text" class="width" name="email" /></td>
                </tr>
            </table><br>
            <input type="reset" value="Reset"/> <input type="submit" value="Submit"/>
        </form>
    </body>
</html>