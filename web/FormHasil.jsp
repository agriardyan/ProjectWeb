<%-- 
    Document   : FormHasil
    Created on : May 12, 2014, 3:39:59 PM
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
        <title>Form Hasil</title>
    </head>
    <body>
        <%
            DataBaseConnection conn = new DataBaseConnection();
            try{
            int inputNim = Integer.parseInt(request.getParameter("nim"));
            String inputNama = request.getParameter("nama");
            String inputMaKul = request.getParameter("makul");
            String inputNilai = request.getParameter("nilai");
            
                String query = "insert into web_jdbc "
                        + "values ('" + inputNim + "','" + inputNama + "','" + inputMaKul + "'," + inputNilai + ")";
                Statement statement = conn.getConnection().createStatement();
                ResultSet result = statement.executeQuery(query);
                statement.close();
            } catch (Exception ex) {
                out.print("messages: " + ex.getMessage());
            }
        %>
        <h1 align="center">Data Berhasil Dimasukkan!</h1>
        
        <h3 align="center"><br><a href="FormTampil.jsp">Klik untuk cari record</a></h3>
        
        <h1 align="center">Data Mahasiswa<br></h1>
        <% 
            try {
                String query = "SELECT * FROM web_jdbc";
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
            while (result.next()) { %>
            <tr>
                <td><%=result.getString("nim") %></td>
                <td><%=result.getString("nama") %></td>
                <td><%=result.getString("mata_kuliah") %></td>
                <td><%=result.getString("nilai") %></td>
            </tr>
            <% } 
            %>
        </table>
        

        <%
                statement.close();
            } catch (Exception ex) {
                out.print("messages: " + ex.getMessage());
            }
        %>
        
        
    </body>
</html>
