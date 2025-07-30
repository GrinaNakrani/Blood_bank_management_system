<%@ page import="project.ConnectionProvider" %>
<%@ page import="java.sql.*" %>
<%
String bloodgroup = request.getParameter("bloodgroup");
String incdec = request.getParameter("incdec");
String units = request.getParameter("units");

try {
    int units1 = Integer.parseInt(units);

    Connection con = ConnectionProvider.getCon();
    PreparedStatement ps;

    if ("inc".equals(incdec)) {
        ps = con.prepareStatement("UPDATE stock SET units = units + ? WHERE bloodgroup = ?");
    } else {
        ps = con.prepareStatement("UPDATE stock SET units = units - ? WHERE bloodgroup = ?");
    }

    ps.setInt(1, units1);
    ps.setString(2, bloodgroup);
    int result = ps.executeUpdate();

    if (result > 0) {
        response.sendRedirect("manageStock.jsp?msg=valid");
    } else {
        response.sendRedirect("manageStock.jsp?msg=invalid");
    }
} catch (Exception e) {
    response.sendRedirect("manageStock.jsp?msg=invalid");
}
%>
