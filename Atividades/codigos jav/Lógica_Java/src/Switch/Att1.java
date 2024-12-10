package Switch;
import java.util.Scanner;
public class Att1 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("escolha um número de 1 a 7: ");
        int dia = scanner.nextInt();
        switch(dia){
            case 1:
                System.out.println("domingo");
                break;
            case 2:
                System.out.println("segunda");
                break;
            case 3:
                System.out.println("terça");
                break;
            case 4:
                System.out.println("quarta");
                break;
            case 5:
                System.out.println("quinta");
                break;
            case 6:
                System.out.println("sexta");
                break;
            case 7:
                System.out.println("sábado");
                break;
            default:
                System.out.println("número inválido");
        }
        scanner.close();
    }
}
