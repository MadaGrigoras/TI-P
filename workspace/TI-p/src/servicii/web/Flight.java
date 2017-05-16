package servicii.web;

public class Flight {
	String arrival,departure,date,depTime,arrTime;
	int len,seats;
	int flightId;
	public Flight(){
		
	};
	public Flight(int i,String a,String d,String da,String dt,String at,int l,int s)
	{
		this.flightId=i;
		this.arrival = a;
		this.departure = d;
		this.date = da;
		this.depTime = dt;
		this.arrTime = at;
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

	void setSeats(int a)
	{
		this.seats=a;
	}
	void setId(int a)
	{
		this.flightId=a;
	}
	public void setTimeD(String string) {
		this.depTime = string;
		
	}
	public void setTimeA(String string) {
		this.arrTime = string;
		
	}
	public void setLen(int int1) {
		this.len = int1;
		
	}
	
}
