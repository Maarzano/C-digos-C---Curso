package attgerais;
//2 - Faça um algoritmo para receber um número qualquer e imprimir na tela se o número é par ou ímpar, positivo ou negativo.

import java.util.Scanner;
public class att2 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("escreva um número inteiro qualquer: ");
            int Mynum = scanner.nextInt();
        if (Mynum > 0) {
            System.out.println("o numero é positivo");
        } else if (Mynum < 0){
            System.out.println("o numero é negativo");
        }else if (Mynum == 0){
            System.out.println("o numero é 0");
        }
        if (Mynum % 2 == 0) {
            System.out.println("o seu número é par");
        } else{
            System.out.println("seu número é ímpar");
        }
        scanner.close();
     }
}
