/*Fazer um programa que leia números inteiros até o usuário digitar 0.
O programa deve contar quantos números foram digitados, e calcular a soma e a média deles.*/
package While_DoWhile;
import java.util.Scanner;
public class Att4 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int count = 0;
        int soma = 0;
        System.out.println("digite números inteiros (para sair digite 0)");
        while (true) {
            int num = scanner.nextInt();
            if (num==0) break;
            count++;
            soma += num;
         } if (count > 0) {
         System.out.println("você digitou " + count + " números, e a soma deles é: "+ soma + "\n" +
                 " e sua média é " + soma/count);
          } else
          System.out.println("nenhuma número foi digitado");
         scanner.close();
    }
}
