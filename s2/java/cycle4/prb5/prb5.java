class Tone extends Thread{
	void run(){
		System.out.println("Printing from thread one");
	}
}

class Ttwo extends Thread{
	void run(){
		System.out.println("Printing from thread two");
	}
}
