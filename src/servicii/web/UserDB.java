package servicii.web;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.List;

public class UserDB {
   @SuppressWarnings("unchecked")
public List<User> getAllUsers(){
      List<User> userList = null;
      try {
         File file = new File("Users.dat");
         if (!file.exists()) {
            User user = new User("mada", "madaaremere", "Madalina");
            userList = new ArrayList<User>();
            userList.add(user);
            saveUserList(userList);		
         }
         else{
            FileInputStream fis = new FileInputStream(file);
            ObjectInputStream ois = new ObjectInputStream(fis);
            userList = (List<User>) ois.readObject();
            ois.close();
         }
      } catch (IOException e) {
         e.printStackTrace();
      } catch (ClassNotFoundException e) {
         e.printStackTrace();
      }		
      return userList;
   }
   public User getUser(String email){
	      List<User> users = getAllUsers();

	      for(User user: users){
	         if(user.getEmail() == email){
	            return user;
	         }
	      }
	      return null;
	   }

	   public int addUser(User pUser){
	      List<User> userList = getAllUsers();
	      boolean userExists = false;
	      for(User user: userList){
	         if(user.getEmail() == pUser.getEmail()){
	            userExists = true;
	            break;
	         }
	      }		
	      if(!userExists){
	         userList.add(pUser);
	         saveUserList(userList);
	         return 1;
	      }
	      return 0;
	   }

	   public int updateUser(User pUser){
	      List<User> userList = getAllUsers();

	      for(User user: userList){
	         if(user.getEmail() == pUser.getEmail()){
	        	 
	         }
	         int index = userList.indexOf(user);			
	            userList.set(index, pUser);
	            saveUserList(userList);
	            return 1;
	         }
	      
	      return 0;
	   }

	   
	   private void saveUserList(List<User> userList){
		      try {
		         File file = new File("Users.dat");
		         FileOutputStream fos;

		         fos = new FileOutputStream(file);

		         ObjectOutputStream oos = new ObjectOutputStream(fos);		
		         oos.writeObject(userList);
		         oos.close();
		      } catch (FileNotFoundException e) {
		         e.printStackTrace();
		      } catch (IOException e) {
		         e.printStackTrace();
		      }
		   }
}
