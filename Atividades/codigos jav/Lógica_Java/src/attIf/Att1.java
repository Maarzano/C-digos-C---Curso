// Escreva um programa que receba a idade de uma pessoa e imprima se ela é maior de idade (18 anos ou mais) ou menor de idade.
package attIf;
import java.util.Scanner;
public class Att1 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("escreva sua idade: ");
        int idade = scanner.nextInt();
        if (idade >= 18){
            System.out.println("é maior de idade");
        } else {
            System.out.println("é menor de idade");
        }
        scanner.close();
    }
}
