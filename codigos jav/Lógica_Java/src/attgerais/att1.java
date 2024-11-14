package attgerais;
//1 - Faça um algoritmo que leia os valores de A, B, C e em seguida imprima na tela a soma entre A e B é mostre se a soma é menor que C.

import java.util.Scanner;
public class att1 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("escreva o valor de A: ");
            int A = scanner.nextInt();
        System.out.print("escreva o valor de B: ");
            int B = scanner.nextInt();
        System.out.print("escreva o valor de C: ");
            int C = scanner.nextInt();
        int soma = A + B;
        if (soma < C) {
            System.out.println("a soma entre: " + A + " e " + B + "  que é = " + soma + " é menor que o valor C que é: " + C);
        } else{
            System.out.println("a soma entre: " + A + " e " + B + " é maior que o valor C que é: " + C);
        }
        scanner.close();
    }
}
