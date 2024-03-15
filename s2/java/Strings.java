public class Strings{

	public static void main(String args[]){
		String text = "Java Programming";

		System.out.println("Original text: " + text );
		System.out.println("Length of the text is : " + text.length() );
		System.out.println("Upper case: " + text.toUpperCase());
		System.out.println("Lower case: " + text.toLowerCase());
		System.out.println("Substring: " + text.substring(3));
		System.out.println("Sub Sequence: " + text.subSequence(3,5));
		System.out.println("Intern: " + text.intern());
		System.out.println("Replace o with $: " + text.replace('o','$'));
		System.out.println("Replace All: " + text.replaceAll(text, "java"));
		System.out.println("Replace First: " + text.replace("lab", "java"));
		System.out.println("Char at index: " + text.charAt(8));
		System.out.println("ASCII :" + (text.charAt(8)));
		System.out.println("First index: " + text.indexOf('0'));
		System.out.println("Last index: " + text.lastIndexOf('0') );
		System.out.println("Concat java: " + text.concat(" java")) ;
		System.out.println("Compare java: " + text.compareTo("java") );
	}

}
		

		
