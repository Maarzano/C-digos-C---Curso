/*Escreva um programa que recebe um número inteiro positivo do usuário e calcula o produto de todos os dígitos pares desse número.
 Caso o número não tenha dígitos pares, o programa deve informar que não há dígitos pares para multiplicar. */
package While_DoWhile;
import java.util.Scanner;

public class Att10 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.print("Digite um número inteiro positivo: ");
        int num = scanner.nextInt();

        int prod = 1;
        boolean temPar = false;

        if (num < 0) {
            System.out.println("O número não pode ser negativo.");
        } else {
            while (num > 0) {
                int digit = num % 10;
                
                if (digit % 2 == 0) {
                    prod *= digit;
                    temPar = true;
                }
                
                num /= 10;
            }
            if (temPar) {
                System.out.println("O produto dos dígitos pares é: " + prod);
            } else {
                System.out.println("Não há dígitos pares para multiplicar.");
            }
        }

        scanner.close();
    }
}
