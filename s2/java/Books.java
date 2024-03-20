import java.util.*;

class Publisher{

	String pub_name;
	Publisher(String pub_name){
		
		this.pub_name = pub_name;
	}
}

class Book extends Publisher{
	
	String book_name;
	String author;
	float price;
	
	Book(String pub_name, String book_name, String author, float price){

		super(pub_name);
		this.book_name = book_name;
		this.author = author;
		this.price = price;
	}
}

class Literature extends Book{

	Literature(String pub_name, String book_name, String author, float price){

		super(pub_name, book_name, author, price);
	}

	void display(){
		
		System.out.println("Name: "+this.pub_name);
		System.out.println("Name: "+this.book_name);
		System.out.println("Author: "+this.author);
		System.out.println("price: "+this.price);
	}
}

class Fiction extends Book{

	Fiction(String pub_name, String book_name, String author, float price){

		super(pub_name, book_name, author, price);
	}

	 void display(){
		
		System.out.println("Name: "+this.pub_name);
		System.out.println("Name: "+this.book_name);
		System.out.println("Author: "+this.author);
		System.out.println("price: "+this.price);
	}
}

public class Books{

	public static void main(String[] args){	
		
		int n = 2;
		Scanner sc = new Scanner("System.in");
		Literature lit_arr[] = new Literature[n];
		Fiction fic_arr[] = new Fiction[n];
		
		System.out.println("Enter the details of the Literature books");
		for (int i = 0; i<n; i++){
			System.out.println("Name: ");
			String name = sc.next();
			System.out.println("Author: ");
			String author = sc.next();
			System.out.println("Publisher: ");
			String publisher = sc.next();
			System.out.println("Price: ");
			float price = sc.nextFloat();
			
			lit_arr[i] = new Literature(publisher, name, author, price);
		}
		
		System.out.println("Enter the details of the Fiction books");
		for (int i = 0; i<n; i++){
			System.out.println("Name: ");
			String name = sc.next();
			System.out.println("Author: ");
			String author = sc.next();
			System.out.println("Publisher: ");
			String publisher = sc.next();
			System.out.println("Price: ");
			float price = sc.nextFloat();
			
			fic_arr[i] = new Fiction(publisher, name, author, price);
		}
		
		System.out.println("BOOK DETAILS: LITERATURE");
		for( int i= 0;i<n;i++){
			lit_arr[i].display();
		}
		
		System.out.println("BOOK DETAILS: FICTION");
		for( int i= 0;i<n;i++){
			fic_arr[i].display();
		}
	}

}

	
