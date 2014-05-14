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
         <%
            DataBaseConnection conn = new DataBaseConnection();
            String cari;
            try {
                cari = request.getParameter("cariNama");
                String query = "select * from web_jdbc where nama = '%" + cari + "%';";
                Statement statement = conn.getConnection().createStatement();
                ResultSet result = statement.executeQuery(query);
                while (result.next()) {
                    out.println("<br><br>NIM\t\t: " + result.getString("nim"));
                    out.println("<br>Nama\t\t: " + result.getString("nama"));
                    out.println("<br>Mata Kuliah\t\t: " + result.getString("mata_kuliah"));
                    out.println("<br>Nilai\t\t: " + result.getString("nilai"));
                }
                statement.close();
            } catch (Exception ex) {
                out.println("message: " + ex.getMessage());
            }
        %>
    </body>
</html>
