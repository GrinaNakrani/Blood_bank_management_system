<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
String mobilenumber = request.getParameter("mobilenumber");

try {
    Connection con = ConnectionProvider.getCon();
    PreparedStatement ps = con.prepareStatement("UPDATE bloodrequest set status='completed' WHERE mobilenumber=?");
    ps.setString(1,mobilenumber);
    ps.executeUpdate();
    response.sendRedirect("requestForBlood.jsp?msg=done");
} catch (Exception e) {
    response.sendRedirect("requestForBlood.jsp?msg=error");
    e.printStackTrace(); // Optional: logs error on server console for debugging
}
%>
