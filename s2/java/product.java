public class product{
	int pcode;
	String pname;
	int price;


static void lowest(product p1, product p2, product p3){
	if(p1.price < p2.price && p1.price < p3.price){
		System.out.println("Product one has the lowest price: " + p1.pname);
	}
	else if(p2.price < p3.price && p2.price < p1.price){
		System.out.println("Product two has lowest price" + p1.pname);
	} 
	else if(p3.price < p2.price && p3.price < p2.price){
		System.out.println("Product three has lowert price "+ p3.pname);
	}

} 
product(int pcode, String pname, int price){

	this.pcode = pcode;
	this.pname = pname;
	this.price = price;
}



public static void main(String args[]){

	product p1 = new product(1,"foo",200);
	product p2 = new product(2,"bar",300);
	product p3 = new product(3,"baz",400);

	lowest(p1,p2,p3);
}

}
	
