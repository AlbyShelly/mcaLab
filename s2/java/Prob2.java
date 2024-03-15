import java.util.Scanner;

class Emp{

	int eNo, eSalary;
	String eName;

	void getEmployee(){
		System.out.println("Enter the employ Number: ");
		Scanner sc = new Scanner(System.in);
		eNo = sc.nextInt();
			
		System.out.println("Enter the employ salary: ");
		eSalary = sc.nextInt();

		System.out.println("Enter the employ name: ");
		eName = sc.next();

	}

	void display(){

		System.out.println("Name: " + eName);
		System.out.println("Salary: " + eSalary);
		System.out.println("Number: " + eNo);

	}

}

public class Prob2{

	public static void main(String[] args){

		Scanner sc = new Scanner(System.in);
		System.out.println("Enter the no. of employees: ");
		int no = sc.nextInt();
		
		Emp arr[] = new Emp[no];
		
		System.out.println("Enter the employee details: ");
		for(int i = 0; i< no; i++){
	
			arr[i] = new Emp();
			arr[i].getEmployee();
		}

		System.out.println("Enter the employee no to search: ");
		int num = sc.nextInt();
		
		for(int i = 0; i<no; i++){
			
			if(arr[i].eNo == num){
			
				arr[i].display();
				System.exit(0);
			}
		}

		System.out.println("The employee not found");

	}

}



