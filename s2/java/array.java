import java.util.*;

public class array{
	
	public static void main(String args[]){
		
		int count,q,i;
		System.out.println("Enter your number: ");
		Scanner sc = new Scanner(System.in);	
		//Get count
		count = sc.nextInt();
		int[] arr = new int[count];
		
		System.out.println("Enter the numbers: ");
		for(i = 0; i< count; i++){
			arr[i] = sc.nextInt();
		}

		//Get the seach ele
		System.out.println("Enter the number to search: ");
		q = sc.nextInt();
		
	
		for(i = 0; i<count; i++){
			if(arr[i] == q){
				System.out.println("Element found at: " +(i+1) );
				System.exit(0);
			}
		}
		
		System.out.println("Element not found");

	}

}
		
		
			
