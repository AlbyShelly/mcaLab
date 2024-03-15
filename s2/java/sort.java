public class sort{

	public static void main(String args[]){

		String temp;
		int i,j;
		
		String str[] = new String[]{"Alby", "Josin", "Thomas", "Foo", "Bar", "Baz"};

		System.out.println("The string before sorting");

		for( i = 0; i< 6; i++){

			System.out.println(str[i]);

		}


		//Selection sort

		for(i =0; i<6; i++){

			for(j = 0; j <6; j++){
				
				if(str[i].compareTo(str[j]) < 0){
					
					temp = str[j];
					str[j] = str[i];
					str[i] = temp;
				}
			}
		}

		System.out.println("The string after sorting");

		for( i = 0; i< 6; i++){

			System.out.println(str[i]);

		}	

	}

}


