package servicii.web;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.sql.PreparedStatement;

public class DBManager {
	
	private static final String URL = "jdbc:mysql://localhost:3306/my_database";
	private static final String USERNAME = "root";
	private static final String PASSWORD = "";
	private static final DBManager instance = new DBManager();
	private Connection conn;
	public static DBManager getInstance() {
		return instance;
	}
	private DBManager() {
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
	public List<Employee> getEmployeeList() {
		try (Statement st = conn.createStatement()) {
			List<Employee> eList = new ArrayList<Employee>();
			st.execute("select * from Student");
			ResultSet rs = st.getResultSet();
			while (rs.next()) {
				Employee e = new Employee(rs.getInt("id_employee"),
					rs.getString("e_companyId"), rs.getString("e_firstName"),
					rs.getString("e_lastName"),rs.getInt("e_cnp"), rs.getString("employee_job"),rs.getInt("salary"),rs.getString("e_email"),rs.getString("e_password"));
				eList.add(e);
			}
			// st.close();
			return eList;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public static boolean validate(String name, String pass) {        
        boolean status = false;
        Connection conn = null;
        PreparedStatement pst = null;
        ResultSet rs = null;

        String url = "jdbc:mysql://localhost:3306/";
        String dbName = "PegasusAirlines";
        String driver = "com.mysql.jdbc.Driver";
        String userName = "root";
        String password = "";
        
        try {
            Class.forName(driver).newInstance();
            conn = DriverManager
                    .getConnection(url + dbName, userName, password);

            pst = conn
                    .prepareStatement("select * from employee where e_firstName=? and e_password=?");
            pst.setString(1, name);
            pst.setString(2, pass);

            rs = pst.executeQuery();
            status = rs.next();

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