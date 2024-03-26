package Graphics;
//Create a graphics package that has classes and interfaces for figures rect, tri, squ, circle. Test the package by finding area of these figures

import java.util.Scanner;

interface figures{
	
	void rectangle();
	void triangle();
	void square();
	void circle();
}

public class Area implements figures{
	
	Scanner sc = new Scanner(System.in);
	public void rectangle(){

		System.out.println("Enter the length: ");
		int l = sc.nextInt();

		System.out.println("Enter the breath: ");
		int b = sc.nextInt();

		System.out.println("The area of rectangle: " + l*b);
	}

	public void square(){

		System.out.println("Enter the side length: ");
		int s = sc.nextInt();
	
		System.out.println("The area of the square is: " + s*s);
	}

	public void triangle(){

		System.out.println("Enter the height of the triangle: ");
		int h = sc.nextInt();
		
		System.out.println("Enter the triangle base: ");
		int b = sc.nextInt();

		System.out.println("The area is: " + 0.5*b*h);
	}

	public void circle(){

		System.out.println("Enter the radius of the circle: ");
		int r = sc.nextInt();

		System.out.println("The area of the circle is: " + 3.14*r*r);
	}
}

		
