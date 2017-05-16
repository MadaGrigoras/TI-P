package servicii.web;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
//import java.sql.ResultSet;
import java.sql.SQLException;

public class DBSignUpManager {
	public static int createNewUser(String email, String pass,String uName) {        
      //  boolean status = false;
        Connection conn = null;
        PreparedStatement pst = null;
        int i = 0;

        String url = "jdbc:mysql://localhost:3306/PegasusAirlines2";
        String driver = "com.mysql.jdbc.Driver";
        String userName = "root";
        String password = "";
        try {
            Class.forName(driver).newInstance();
            conn = DriverManager.getConnection(url, userName, password);

            pst = conn.prepareStatement("insert into user values(?,?,?)");
            pst.setString(1, email);
            pst.setString(2, pass);
            pst.setString(3, uName);
           
          i = pst.executeUpdate();
            if (i > 0)
               System. out.print("You are successfully registered...");
            else
            	System. out.print("You are not successfully registered...");
        } catch (Exception e) {
            System.out.println(e);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (pst != null) {
                try {
                    pst.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
        return i;
    }
}
