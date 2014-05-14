<%-- 
    Document   : hasilCariMhs
    Created on : May 12, 2014, 4:04:19 PM
    Author     : DELL
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="jdbc.DataBaseConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hasil Pencarian</title>
    </head>
    <body>
        <h1 align="center">Data Mahasiswa<br></h1>
            <%
                try {
                    DataBaseConnection conn = new DataBaseConnection();
                    String nim = request.getParameter("field");

                    String query = "SELECT * FROM web_jdbc WHERE nim = "+nim;
                    Statement statement = conn.getConnection().createStatement();
                    ResultSet result = statement.executeQuery(query);
            %>
        <table border="1" width="40%" align="center">
            <tr>
                <td>NIM</td>
                <td>Nama</td>
                <td>Mata Kuliah</td>
                <td>Nilai</td>
            </tr>
            <%
                while (result.next()) {%>
            <tr>
                <td><%=result.getString("nim")%></td>
                <td><%=result.getString("nama")%></td>
                <td><%=result.getString("mata_kuliah")%></td>
                <td><%=result.getString("nilai")%></td>
            </tr>
            <% }
            %>
        </table>
        <%
                statement.close();
            } catch (Exception ex) {
                out.println("message: " + ex.getMessage());
            }
        %>
    </body>
    
</html>
