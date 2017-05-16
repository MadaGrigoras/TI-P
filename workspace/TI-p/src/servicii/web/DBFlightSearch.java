package servicii.web;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.ResultSetMetaData;

import java.sql.PreparedStatement;

public class DBFlightSearch {
	
	private static final String URL = "jdbc:mysql://localhost:3306/PegasusAirlines";
	private static final String USERNAME = "root";
	private static final String PASSWORD = "";
	private static final DBFlightSearch instance = new DBFlightSearch();
	private Connection conn;
	public static DBFlightSearch getInstance() {
		return instance;
	}
	private DBFlightSearch() {
		System.out.println("Loading driver...");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("Driver loaded!");
		} catch (ClassNotFoundException e) {
			throw new IllegalStateException(
					"Cannot find the driver in the classpath!", e);
		}
		try {
			conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static boolean validate(String departure, String destination , String date) {        
        boolean status = false;
        Connection conn = null;
        PreparedStatement pst = null;
        ResultSet rs = null;

        String url = "jdbc:mysql://localhost:3306/";
        String dbName = "PegasusAirlines2";
        String driver = "com.mysql.jdbc.Driver";
        String userName = "root";
        String password = "";
        
        try {
            Class.forName(driver).newInstance();
            conn = DriverManager
                    .getConnection(url + dbName, userName, password);

            pst = conn
                    .prepareStatement("select * from flight where departure=? and arrival=? and departure_date=?");
            pst.setString(1, departure);
            pst.setString(2, destination);
            pst.setString(3, date);
            rs = pst.executeQuery();
            status = rs.next();
            ResultSetMetaData rsmd=(ResultSetMetaData) rs.getMetaData(); 
            System.out.println("Total columns: "+rsmd.getColumnCount());  
            System.out.println("Column Name of 1st column: "+rsmd.getColumnName(1));  
            System.out.println("Column Type Name of 1st column: "+rsmd.getColumnTypeName(1));  
            
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
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
        return status;
    }
}