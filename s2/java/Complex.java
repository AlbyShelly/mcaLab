import java.util.Scanner;

public class Complex{

public class Cmpx{
	
	int real;
	int img;

	Cmpx(int r, int i){
		this.real = r;
		this.img = i;
	}

}

public static void main(String args[]){
	
	Scanner sc = new Scanner(System.in);	
	
	System.out.println("Enter the complex part: ");
	int rea = sc.nextInt();
	System.out.println("Enter the imaginery product");
	int im = sc.nextInt();
	
	Cmpx num1 = new Cmpx(1, 2);

	System.out.println("Enter the complex part: ");
	rea = sc.nextInt();
	System.out.println("Enter the imaginery product");
	im = sc.nextInt();
 
	Cmpx num2 = new Cmpx(3, 4);
	
	System.out.println("The result is: ");
	
	System.out.print(num1.real+"+"+"i"+num1.img);
	System.out.print(" + ");
	System.out.println(num2.real+"+"+"i"+num2.img);

	System.out.println(num1.real+num2.real + "+" + "i" + num1.img+num2.img);
	
	
}

}


		
	

	
