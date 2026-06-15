<%@ page import="java.sql.*" %>

<%
String username = request.getParameter("username");
String password = request.getParameter("password");
String firstname = request.getParameter("firstname");
String lastname = request.getParameter("lastname");

Connection conn = null;
PreparedStatement ps = null;

try {
    Class.forName("com.mysql.cj.jdbc.Driver");

    conn = DriverManager.getConnection(
        "jdbc:mysql://localhost:3306/cse3023", 
        "root", 
        "admin"
    );

    String sql = "INSERT INTO userprofile VALUES (?, ?, ?, ?)";
    ps = conn.prepareStatement(sql);

    ps.setString(1, username);
    ps.setString(2, password);
    ps.setString(3, firstname);
    ps.setString(4, lastname);

    ps.executeUpdate();

    // redirect after successful registration
    response.sendRedirect("login.jsp");

} catch(Exception e) {
    out.println("Error: " + e.getMessage());
} finally {
    if(ps != null) ps.close();
    if(conn != null) conn.close();
}
%>