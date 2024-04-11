import java.io.File;

public class Main{

	public static void main( String[] args){

		String dir_path = "/home/lab2/Downloads";
		
		File dir = new File(dir_path);
		
		File[] files = dir.listFiles();

		if (files != null){
	
			for(File file : files){

				System.out.println(file.getName());
			}
		}

		//Code to serach file in the diretory
		System.out.println("--------------------------------");
		String query = "Add.pdf";
		System.out.println("query: " + query);
		
		for(File file: files){

			/*System.out.println("query :" + query);
			System.out.println("flie :" + file.getName());*/

			if(file.getName().equals(query)){
				
				//System.out.println("I am in if");	
				System.out.println("File " + query +" found");
				System.exit(0);
			}
		}

		System.out.println("File not found");	
		
	}
}
