package servicii.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.Consumes;
import javax.ws.rs.FormParam;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;

@Path("/UserService")
public class UserService {
	
   UserDB userDB = new UserDB();
   private static final String SUCCESS_RESULT="<result>success</result>";
   private static final String FAILURE_RESULT="<result>failure</result>";


   @GET
   @Path("/users")
   @Produces(MediaType.APPLICATION_XML)
   public List<User> getUsers(){
      return userDB.getAllUsers();
   }
   @GET
   @Path("/users/{email}")
   @Produces(MediaType.APPLICATION_XML)
   public User getUser(@PathParam("email") String email){
      return userDB.getUser(email);
   }

   @POST
   @Path("/users")
   @Produces(MediaType.APPLICATION_XML)
   @Consumes(MediaType.APPLICATION_FORM_URLENCODED)
   public String createUser(@FormParam("id") String email,
		   @FormParam("password") String password,
		   @FormParam("username") String username,
      @Context HttpServletResponse servletResponse) throws IOException{
      User user = new User(email, password,username);
      int result = userDB.addUser(user);
      if(result == 1){
         return SUCCESS_RESULT;
      }
      return FAILURE_RESULT;
   }
   @PUT
   @Path("/users")
   @Produces(MediaType.APPLICATION_XML)
   @Consumes(MediaType.APPLICATION_FORM_URLENCODED)
   public String updateUser(@FormParam("email") String email,
      @FormParam("password") String password,
      @FormParam("username") String username,
      @Context HttpServletResponse servletResponse) throws IOException{
      User user = new User(email, password, username);
      int result = userDB.updateUser(user);
      if(result == 1){
         return SUCCESS_RESULT;
      }
      return FAILURE_RESULT;
   }

   /*  @DELETE
   @Path("/users/{email}")
   @Produces(MediaType.APPLICATION_XML)
 public String deleteUser(@PathParam("userid") String email){
      int result = userDB.deleteUser(email);
      if(result == 1){
         return SUCCESS_RESULT;
      }
      return FAILURE_RESULT;
   }*/
 /*  @OPTIONS
   @Path("/users")
   @Produces(MediaType.APPLICATION_XML)
   public String getSupportedOperations(){
      return "<operations>GET, PUT, POST, DELETE</operations>";
   }*/
}