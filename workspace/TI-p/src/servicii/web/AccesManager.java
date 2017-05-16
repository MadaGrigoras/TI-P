package servicii.web;
import servicii.web.Flight;

import java.util.ArrayList;

import servicii.web.DBFlightManager;

public class AccesManager {
	public ArrayList<Flight> getFlights() throws Exception
	{
	ArrayList<Flight> FlightList = new ArrayList<Flight>();
	//DBFlightManager db = new DBFlightManager();
	FlightList = DBFlightManager.getFlights();
	return FlightList;
	}
}
