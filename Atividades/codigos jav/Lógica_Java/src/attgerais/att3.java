package attgerais;
/*3 - Faça um algoritmo que leia dois valores inteiros A e B, se os valores de A e B forem iguais, deverá somar os dois valores, 
caso contrário devera multiplicar A por B. Ao final de qualquer um dos cálculos deve-se atribuir o resultado a uma variável C e
imprimir seu valor na tela.*/

import java.util.Scanner;

public class att3 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("escreva o seu 1° valor: ");
            int num1 = scanner.nextInt();
        System.out.print("escreva se 2° número; ");
            int num2 = scanner.nextInt();
                int C = 0;
        if (num1 == num2){
            C = num1 + num2;
            System.out.println("os seus valores são iguais, e a soma deles é: " + C);
        } else {
            C = num1 * num2;
            System.out.println("o valor do seus numeros são diferentes, e a multiplicação deles é: " + C);
        }
        scanner.close();
    }
}