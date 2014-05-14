package jdbc;


import java.sql.Statement;
import java.sql.ResultSet;

/*
 * To change this template, choose Tools | Templates and open the template in
 * the editor.
 */
/**
 *
 * @author admin
 */
public class DataBaseConnectionMain {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        DataBaseConnection conn = new DataBaseConnection();
        try {
            String query = "select * from web_jdbc";
            Statement statement = conn.getConnection().createStatement();
            ResultSet result = statement.executeQuery(query);
            while (result.next()) {
                System.out.println("NIM\t\t: " + result.getString("nim"));
                System.out.println("Nama\t\t: " + result.getString("nama"));
                System.out.println("Mata Kuliah\t\t: " + result.getString("mata_kuliah"));
                System.out.println("Nilai\t\t: " + result.getString("nilai"));
            }
            statement.close();
        } catch (Exception ex) {
            System.out.println("messages: " + ex.getMessage());
        }
    }
}
