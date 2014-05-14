<%-- 
    Document   : Cari
    Created on : May 11, 2014, 8:32:46 PM
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
        <title>Input Data</title>
    </head>
    <body>
        Form Masukkan Data
        <form action="FormHasil.jsp">
            <table>
                <tr>
                    <td>
                        NIM
                    </td>
                    <td>
                        <input type="text" name="nim">
                    </td>
                </tr>
                <tr>
                    <td>
                        Nama
                    </td>
                    <td>
                        <input type="text" name="nama">
                    </td>
                </tr>
                <tr>
                    <td>
                        Mata Kuliah
                    </td>
                    <td>
                        <input type="text" name="makul">
                    </td>
                </tr>
                <tr>
                    <td>
                        Nilai
                    </td>
                    <td>
                        <input type="text" name="nilai">
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                        <input type="submit" value="Kirim">
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
