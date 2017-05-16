package servicii.web;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
//import java.sql.Statement;
//import java.util.ArrayList;
//import java.util.List;
import java.sql.PreparedStatement;

public class DBFlightManager {
	
	public static   ArrayList<Flight> getFlights()
	{
     Connection conn = null;
     PreparedStatement pst = null;
     ResultSet rs = null;
     ArrayList<Flight> FlightList=null ;

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
                 .prepareStatement("select * from flight");
         

         rs = pst.executeQuery();
         
        FlightList = new ArrayList<Flight>();
         try{
        	 while(rs.next())
        	 {
        		 Flight f=new Flight();
        		 f.setId(rs.getInt("id_flight"));
        		 f.setDeparture(rs.getString("departure"));
        		 f.setArrival(rs.getString("arrival"));
        		 f.setDatef(rs.getString("departure_date"));
        		 f.setLen(rs.getInt("flight_length"));
        		 f.setSeats(rs.getInt("seats"));
        		 FlightList.add(f);
        	 }
         }
         catch (SQLException e)
         {
         e.printStackTrace();
         }

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
     return FlightList;
 }
}