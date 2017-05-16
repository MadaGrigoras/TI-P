package servicii.web;

public class Flight {
	String arrival,departure,date;
	int len,seats;
	int flightId;
	public Flight(){
		
	};
	public Flight(int i,String a,String d,String da,int l,int s)
	{
		this.flightId=i;
		this.arrival = a;
		this.departure = d;
		this.date = da;
		this.len = l;
		this.seats = s;
	}
	String getArrival(){
		return arrival;
	}
	
	String getDeparture(){
		return departure;
	}
	String getDatef(){
		return date;
	}
	int getLen(){
		return len;
	}
	int getId(){
		return flightId;
	}
	int getSeats(){
		return seats;
	}
	void setArrival(String a)
	{
		this.arrival = a;
	}
	void setDeparture(String a)
	{
		this.departure = a;
	}
	void setDatef(String a)
	{
		this.date = a;
	}
	void setLen(int a)
	{
		this.len=a;
	}
	void setSeats(int a)
	{
		this.seats=a;
	}
	void setId(int a)
	{
		this.flightId=a;
	}
	
}
