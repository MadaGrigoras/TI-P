/*package servicii.web;
import com.google.gson.Gson;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

// adnotarea Path specifica calea relativa spre un anumit serviciu web
// e.g., @ApplicationPath("rest") + @Path("/hello") => http://localhost:8080/ProiectServiciiWeb/rest/hello
// in aceasta situatie se va apela una din metodele clasei Hello, in functie de tipul media (text/plain, text/xml sau text/html)
@Path("/hello")
public class Hello {

	// Metoda apelata daca tipul media cerut este TEXT_PLAIN
	@GET
	@Produces(MediaType.TEXT_PLAIN)
	public String sayPlainTextHello() {
		
		String json = new Gson().toJson(dataObjects);
				return "Hello Jer";
	}

	// Metoda apelata daca tipul media cerut este XML
	@GET
	@Produces(MediaType.TEXT_XML)
	public String sayXMLHello() {
		return "<?xml version=\"1.0\"?>" + "<title>" + "Hello Jersey" + "</title>" + "<body><h1>" + "Hello Jersey" + "</h1>" + DBManager.getInstance().getEmployeeList().toString() + "</body>";
	}

	// Metoda apelata daca tipul media cerut este HTML

}*/