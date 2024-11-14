/*Escreva um programa que peça números inteiros ao usuário e continue somando apenas os números pares até que ele insira um número negativo.
 No final, exiba a soma dos números pares inseridos. */
package While_DoWhile;
import java.util.Scanner;
public class Att6 {
public static void main(String[] args) {
Scanner scanner = new Scanner(System.in);
int count = 0;
int soma = 0;

    System.out.println("digite números inteiros");

    while (true) {
        int num = scanner.nextInt();
        if (num < 0) break;
        count++;
        if (num % 2 == 0) {
            soma += num;
        }
    }
    System.out.println("voulos digitou " + count + " numeros");
    System.out.println("a soma dos números pares é: " + soma);
scanner.close();
}
}
