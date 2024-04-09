/*fibonacci and  even number using runnable interface*/

import java.util.Scanner;
class Tone implements Runnable{
	public void run(){
		
		int limit = 50;
		int num1 = 0;
		int num2 = 1;
		//int carry = 0	
		System.out.println("NUM : " + 0 );
		System.out.println("NUM : " + 0 );
		for( int i =0; i<limit; i++){
			
			System.out.println("NUM : " + (num1+num2) );
			int temp = num2;
			num2 = num1+num2;
			num1 = temp;
		}
	}
}

class Ttwo implements Runnable{
	public void run(){
		int limit = 100;	
		for(int i =0; i<limit; i=i+2){
			System.out.println("EVEN : "+i);
		}
					
	}
}


public class prb6{

	public static void main(String[] args){
		
		Tone obj1 = new Tone();
		Ttwo obj2 = new Ttwo();
		
		Thread t1 = new Thread(obj1);
		Thread t2 = new Thread(obj2);
		
		t1.start();
		t2.start();
	}
}
