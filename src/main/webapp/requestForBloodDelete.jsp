<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
String mobilenumber = request.getParameter("mobilenumber");

try {
    Connection con = ConnectionProvider.getCon();
    Statement st = con.createStatement();
    st.executeUpdate("DELETE FROM bloodrequest WHERE mobilenumber='" + mobilenumber + "'");
    response.sendRedirect("requestForBlood.jsp?msg=deleted");
} catch (Exception e) {
    response.sendRedirect("requestForBlood.jsp?msg=error");
}
%>
