<%-- 
    Document   : FormTampil
    Created on : May 13, 2014, 11:35:36 PM
    Author     : root
--%>

<%@page import="jdbc.DataBaseConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Form Tampil</title>
    </head>
    <body>
        <h1 align="center"><br>Data Mahasiswa<br></h1>
            <% DataBaseConnection conn = new DataBaseConnection();
                try {
                    String query = "SELECT * FROM web_jdbc";
                    Statement statement = conn.getConnection().createStatement();
                    ResultSet result = statement.executeQuery(query);
            %>
        <form action="FormTampil.jsp">
            <table width="60%" align="center" cellspacing="1">
                <tr>
                    <td>
                        <table width="80%">
                            <h2>Cari</h2>
                            <tr>
                                <td>Berdasarkan</td>
                                <td>
                                    <select name="opt">
                                        <option value='1'>NIM</option>
                                        <option value='2'>Nama</option>
                                        <option value='3'>Mata Kuliah</option>
                                        <option value='4'>Nilai</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>Field</td>
                                <td><input type="text" name="field"></td>
                            </tr>
                            <tr>
                                <td><input type="submit" value="Cari!"></td>
                            </tr>
                        </table>
                    </td>
                    <td padding="20px"><table border="1" width="100%" align="right">
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
                                out.print("messages: " + ex.getMessage());
                            }
                        %></td>
                </tr>
            </table>
        </form>

        <%
            try {
                String opt = request.getParameter("opt");
                RequestDispatcher rd;

                if (opt.equals("1")) {
                    rd = request.getRequestDispatcher("hasilCariNim.jsp");
                    rd.forward(request, response);
                } else if (opt.equals("2")) {
                    rd = request.getRequestDispatcher("CariPesertaKul.jsp");
                    rd.forward(request, response);
                } else if (opt.equals("3")) {
                } else if (opt.equals("4")) {
                }

            } catch (Exception e) {
            }

        %>

    </body>
</html>
