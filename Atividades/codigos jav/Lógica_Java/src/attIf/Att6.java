// Escreva um programa que receba dois números inteiros e imprima qual deles é o maior. Se eles forem iguais, imprima "Os números são iguais".
package attIf;
import java.util.Scanner;
public class Att6 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
            System.out.println("escreva seu 1° número: ");
                int num1 = scanner.nextInt();
            System.out.println("escreva seu 2° numero: ");
                int num2 = scanner.nextInt();
            if (num1 > num2){
                System.out.println(num1 + " é maior que " + num2);
            } else if (num1 < num2){
                System.out.println(num2 + " é maior que " + num1);
            } else {
                System.out.println("são iguais");
            }

        scanner.close();
    }
}
