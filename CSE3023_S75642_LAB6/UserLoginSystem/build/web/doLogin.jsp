<%-- 
    Document   : doLogin
    Created on : May 12, 2026, 3:44:51?PM
    Author     : Admin
--%>

<%@ page import="java.sql.*" %>

<%
String username = request.getParameter("username");
String password = request.getParameter("password");

Connection conn = null;
PreparedStatement ps = null;
ResultSet rs = null;

try {
    Class.forName("com.mysql.cj.jdbc.Driver");

    conn = DriverManager.getConnection(
        "jdbc:mysql://localhost:3306/cse3023",
        "root",
        "admin"
    );

    String sql = "SELECT * FROM userprofile WHERE username=? AND password=?";
    ps = conn.prepareStatement(sql);

    ps.setString(1, username);
    ps.setString(2, password);

    rs = ps.executeQuery();

    if(rs.next()) {
        // VALID LOGIN
        session.setAttribute("username", rs.getString("username"));
        session.setAttribute("firstname", rs.getString("firstname"));
        session.setAttribute("lastname", rs.getString("lastname"));

        response.sendRedirect("main.jsp");
    } else {
        // INVALID LOGIN
        response.sendRedirect("login.jsp?msg=Invalid username or password..!");
    }

} catch(Exception e) {
    out.println("Error: " + e.getMessage());
} finally {
    if(rs != null) rs.close();
    if(ps != null) ps.close();
    if(conn != null) conn.close();
}
%>