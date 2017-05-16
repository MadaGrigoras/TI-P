package servicii.web;
import java.io.Serializable;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
@XmlRootElement(name = "user")
public class User implements Serializable {

   private static final long serialVersionUID = 1L;
   private String email;
   private String password;
   private String username;

   public User(){}

   public User(String email, String password, String username){
      this.email = email;
      this.password = password;
      this.username = username;
   }

   public String getEmail() {
      return email;
   }
   @XmlElement
   public void setEmail(String email) {
      this.email = email;
   }
   public String getPassword() {
      return password;
   }
   @XmlElement
      public void setPassword(String password) {
      this.password = password;
   }
   public String getUsername() {
	      return username;
	   }
	   @XmlElement
	   public void setUsername(String username) {
	      this.username = username;
	   }	

	   @Override
	   public boolean equals(Object object){
	      if(object == null){
	         return false;
	      }else if(!(object instanceof User)){
	         return false;
	      }else {
	         User user = (User)object;
	         if(email == user.getEmail()
	            && password.equals(user.getPassword())
	            && username.equals(user.getUsername())
	         ){
	            return true;
	         }			
	      }
	      return false;
	   }	
	}