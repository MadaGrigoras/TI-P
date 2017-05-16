package servicii.web;

public class Employee {
	private int id_employee;
	private String  e_companyId;
	private String e_lastName;
	private String e_firstName;
	private int e_cnp;
	private String employee_job;
	private int salary;
	//private String e_email;
	private String e_password ;

	public Employee(int id_employee, String e_companyId,String e_lastName, String e_firstName, int e_cnp,
			String employee_job,int salary,String e_email,String e_password) {
		this.id_employee = id_employee;
		this.e_companyId =e_companyId;
		this.e_lastName = e_lastName;
		this.e_firstName = e_firstName;
		this.e_cnp = e_cnp;
		this.employee_job = employee_job;
		this.salary= salary;
		this.e_password=e_password;
		//this.e_email =e_email;
		//this.e_password =e_password;
	}
	public int getId_employee() {
		return id_employee;
	}
	public String getNume() {
		return e_firstName;
	}
	public int getCnp() {
		return e_cnp;
	}
	public String geEmployee_Job() {
		return employee_job;
	}
	public int getSalary() {
		return salary;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Employee [id_employee=").append(id_employee)
			.append(", nume=").append(e_firstName).append(", salary=")
			.append(salary).append(", job=").append(employee_job).append(", cnp=").append(e_cnp).append("]");
		return builder.toString();
	}
}