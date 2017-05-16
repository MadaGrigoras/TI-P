package servicii.web;


import javax.ws.rs.Path;
import javax.ws.rs.Produces;


import com.google.gson.Gson;

import java.util.ArrayList;
import servicii.web.Flight;
import javax.ws.rs.GET;

 
//import com.google.gson.Gson;
 
import servicii.web.AccesManager;
 
// adnotarea Path specifica calea relativa spre un anumit serviciu web
// e.g., @ApplicationPath("rest") + @Path("/hello") => http://localhost:8080/ProiectServiciiWeb/rest/hello
// in aceasta situatie se va apela una din metodele clasei Hello, in functie de tipul media (text/plain, text/xml sau text/html)
@Path("/FlightService")
public class FlightService {

	// Metoda apelata daca tipul media cerut este TEXT_PLAIN
	@GET
	
	@Path("/Flight")
	@Produces("application/json")
	public String Flights() {
		String flights = null;
		ArrayList<Flight> FlightList = new ArrayList<Flight>();
		try
		{
		FlightList = new AccesManager().getFlights();
		Gson gson = new Gson();
		flights = gson.toJson(FlightList);
		} catch (Exception e)
		{
		e.printStackTrace();
		}
		return flights;
	}
	
}