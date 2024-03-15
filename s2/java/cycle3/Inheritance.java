import java.util.Scanner;

class Person{
	
	String name;
	String gender;
	String address;
	int age;
	
	Person(String name, String gender, String address, int age){
		this.name = name;
		this.gender = gender;
		this.address = address;
		this.age = age;
	}

}

class Employee extends Person{
	
	int empid;
	String company_name;
	String qualification;
	double salary;
	
	Employee(String name, String gender, String address, int age, int empid, String company_name, String qualification, double salary){
	
	super(name, gender, address, age);
	this.empid = empid;
	this.company_name = company_name;
	this.qualification = qualification;
	this.salary = salary;
	
	}
}

class Teacher extends Employee{

	int teacher_id;
	String department;
	String subject;

	Teacher(String name, String gender, String address, int age, int empid, String company_name, String qualification, double salary, int teacher_id, String department, String subject){

	super(name, gender, address, age, empid, company_name, qualification, salary);
	this.teacher_id = teacher_id;
	this.department = department;
	this.subject = subject;
	
	}

	void display(){

		System.out.println("Name: " + name);
		System.out.println("Gender: " + gender );
		System.out.println("Address: " + address);
		System.out.println("Age: " + age);
		System.out.println("Empid: " + empid);
		System.out.println("Company_name: " + company_name);
		System.out.println("Qualification: " + qualification);
		System.out.println("Salary: " + salary);
		System.out.println("Teacher_id: " + teacher_id);
		System.out.println("Department: " + department);
		System.out.println("Subject: " + subject);
	}

}

public class Inheritance{

	public static void main(String[] args){
		
		int n = 1;
		Teacher arr[] = new Teacher[n];
		Scanner sc = new Scanner(System.in);

		for(int i = 0; i< n; i++){
			
			System.out.println("Enter details");
			System.out.println();
		
			System.out.print("Name: " );
			String name = sc.next();
			System.out.print("Gender: "  );
			String gender = sc.next();
			System.out.print("Address: " );
			String address = sc.next();
			System.out.print("Age: " );
			int age = sc.nextInt();
			System.out.print("Empid: " );
			int empid = sc.nextInt();
			System.out.print("Company_name: " );
			String company_name = sc.next();
			System.out.print("Qualification: ");
			String qualification = sc.next();
			System.out.print("Salary: " );
			int salary = sc.nextInt();
			System.out.print("Teacher_id: " );
			int teacher_id = sc.nextInt();
			System.out.print("Department: " );
			String department = sc.next();
			System.out.print("Subject: ");
			String subject = sc.next();
		
		arr[i] = new Teacher(name, gender, address, age, empid, company_name, qualification, salary, teacher_id, department, subject);
				
		}

		System.out.println("Employee details-------------");


		for(int i = 0; i<n; i++){
			arr[i].display();
		}

	}
}


