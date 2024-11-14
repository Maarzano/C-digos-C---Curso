/*  Escreva um programa que peça um número ao usuário e verifique se ele é primo (divisível apenas por 1 e por ele mesmo).
Se o número for primo, imprima "primo". Continue pedindo números até que o usuário digite "sair". */
package While_DoWhile;
import java.util.Scanner;
public class Att5 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int count = 0;

        System.out.println("digite um número: " + "\n" + "para sair digite 0");

        while (true) {
            int numero = scanner.nextInt();
            if (numero == 0) break;
            count++;

            boolean primo = true;
            for (int i = 2; i < numero; i++) {
                if (numero % i == 0) {
                    primo = false;
                    break;
                }
            }
            if (primo) {
                System.out.println("é primo");
            } else {
                System.out.println("não é primo");
            }
        }
    System.out.println("você digitou " + count + " números");
        scanner.close();
    }
}
