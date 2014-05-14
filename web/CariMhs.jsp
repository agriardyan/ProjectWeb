<%-- 
    Document   : Cari
    Created on : May 11, 2014, 8:32:46 PM
    Author     : DELL
--%>

<%@page import="jdbc.DataBaseConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cari Mahasiswa</title>
    </head>
    <body>
        Cari
        <form action="hasilCariMhs.jsp">
            <table>
                <tr>
                    <td>
                        Nama
                    </td>
                    <td>
                        <input type="text" name="cariNama">
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
