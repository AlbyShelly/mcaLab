import java.util.*;

class overload{

	void area(int l, int b){
		int length = l;
		int breath = b;
		System.out.println("Area: " + length*breath);
	}

	void area(int s){
		System.out.println("Area: " + s*s);
	}
	
	void area(int b, float h){
		float base = b;
		float height = h;
		System.out.println("Area: " + base*height*0.5);
	}

	void area(double r){
		double radius = r;
		System.out.println("Area: " + 3.14*radius);
	}

}

public class MethodOverload{
public static void main(String[] args){
		overload obj = new overload();
		Scanner sc = new Scanner(System.in);
		System.out.println("Area of different Shapes");
		
		System.out.println("Rectangle");
		System.out.println("Enter the length and breath");
		obj.area(sc.nextInt(), sc.nextInt());

		System.out.println("Square");
		System.out.println("Enter the length");
		obj.area(sc.nextInt());

		System.out.println("Triangle");
		System.out.println("Enter the side");
		obj.area(sc.nextInt(), sc.nextFloat());

		System.out.println("Circle");
		System.out.println("Enter the radius");
		obj.area(sc.nextDouble());
}
} 	
