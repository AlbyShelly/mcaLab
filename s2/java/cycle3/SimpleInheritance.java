import java.util.Scanner;

class Person{
	
	String name;
	String id;
	String address;
	int salary;
	
	Person(String name, String id, String address, int salary){
		this.name = name;
		this.id = id;
		this.address = address;
		this.salary = salary;
	}

}

class Teacher extends Person{

	String department;
	String subject;

	Teacher(String name, String id, String address, int salary, String department, String subject){

	super(name, id, address, salary);
	this.department = department;
	this.subject = subject;
	
	}

	void display(){

		System.out.println("Name: " + name);
		System.out.println("Id: " + id );
		System.out.println("Address: " + address);
		System.out.println("Salary: " + salary);
		System.out.println("Department: " + department);
		System.out.println("Subject: " + subject);
	}

}

public class SimpleInheritance{

	public static void main(String[] args){
		
		int n = 1;
		Teacher arr[] = new Teacher[n];
		Scanner sc = new Scanner(System.in);

		for(int i = 0; i< n; i++){
			
			System.out.println("Enter details");
			System.out.println();
		
			System.out.print("Name: " );
			String name = sc.next();
			System.out.print("Id: "  );
			String id = sc.next();
			System.out.print("Address: " );
			String address = sc.next();
			System.out.print("Salary: " );
			int salary = sc.nextInt();
			System.out.print("Empid: " );
			int empid = sc.nextInt();
			System.out.print("Department: " );
			String department = sc.next();
			System.out.print("Subject: ");
			String subject = sc.next();
		
		arr[i] = new Teacher(name, id, address, salary, department, subject);
				
		}

		System.out.println("Employee details-------------");


		for(int i = 0; i<n; i++){
			arr[i].display();
		}

	}
}


