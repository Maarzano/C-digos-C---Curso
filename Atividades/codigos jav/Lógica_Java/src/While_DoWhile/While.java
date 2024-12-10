package While_DoWhile;
import java.util.Scanner;
public class While {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("escreva um número inteiro: ");
        int Num = scanner.nextInt();
        int seuNUm = Num;
        int par = 0, impar = 0;

        while (Num > 0){
             if (Num % 2 == 0){
                 System.out.println(Num + " PAR ");
                 par++;
                 Num--;
             } else {
                 System.out.println(Num + " ÍMPAR ");
                 impar++;
                 Num--;
             }
        }
        System.out.println(seuNUm + " tem " + par + " números pares e " + impar + " números ímpares" );

        scanner.close();
    }
}
