public class Switch2 {
public static void main(String[] args) {

    int month = 8;
    String monthString;
    switch (month) {
        case 1:  monthString = "January";
                 break;
        case 2:  monthString = "February";
                 break;
        case 3:  monthString = "March";
                 break;
        default: monthString = "Invalid month";
                 break;
    }
    System.out.println(monthString);
}
}
