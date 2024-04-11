import java.util.Scanner;
import java.io.FileWriter;
import java.io.File;
import java.io.IOException;

public class CreateFile{

	public static void main(String[] args){

		//Create a file 
		String fileName = "new.txt";

		try{

			File myFile = new File(fileName);
			if(myFile.createNewFile()){

				System.out.println("File created: " + fileName);
			}else{
				
				System.out.println("File already exists");
			}
		}catch(IOException e){
			
			System.out.println("An error occured");
		}

		//WriteToFile

		try{
			
			FileWriter myWriter = new FileWriter(fileName);
			myWriter.write("This is OOPs Lab");
			myWriter.close();
		}catch(IOException e){
		}

		//Read from file
		
		try{
			
			File myFile = new File(fileName);
			Scanner sc = new Scanner(myFile);
			while(sc.hasNextLine()){
			
				String data = sc.nextLine();
				System.out.println(data);
			}
		}catch(IOException e){
		}
		

	}
}
