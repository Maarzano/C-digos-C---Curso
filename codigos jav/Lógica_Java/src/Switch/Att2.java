package Switch;
import java.util.Scanner;
public class Att2 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("escreva uma nota de 0 a 100: ");
            int nota = scanner.nextInt();
                char classificação = 0;
            switch (nota/10){
                case 10:
                case 9:
                    classificação = 'A';
                    break;
                case 8:
                    classificação = 'B';
                    break;
                case 7:
                    classificação = 'C';
                    break;
                case 6:
                    classificação = 'D';
                    break;
                case 5:
                case 4:
                case 3:
                case 2:
                case 1:
                case 0:
                    classificação = 'F';
                    break;
                default:
                    System.out.println("número invalido");
            }
        System.out.println("classificação: " + classificação);
            scanner.close();
    }
}
