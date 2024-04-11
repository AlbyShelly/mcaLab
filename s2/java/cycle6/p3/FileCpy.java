import java.util.Scanner;
import java.io.FileWriter;
import java.io.File;

public class FileCpy{

	public static void main(String[] args){

		String fileName = "new.txt";
		
		File srcFile = new File(fileName);
		File destFile = new File("cpy.txt");

		Scanner sc = new Scanner(srcFile);
		FileWriter writerobj = new FileWriter(destFile);
		
		while(sc.hasNextLine()){

			String data = sc.nextLine();
			writerobj.write(data);
		}

	}
}
			
		
