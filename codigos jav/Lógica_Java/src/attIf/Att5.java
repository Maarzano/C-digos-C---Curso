/*Crie um programa que receba o salário de um funcionário e aplique um aumento de 10% 
se o salário for menor que R$ 1.500,00. Caso contrário, imprima o salário sem alteração.*/
package attIf;
import java.util.Scanner;
public class Att5 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("escreva o salário de um funcionário: ");
        float salário = scanner.nextFloat();
            if (salário < 1500.00) {
                salário = salário + (salário * 10/100);
                System.out.println("o salário foi menor que 1500 e agora é de: " + salário);
            } else{
                System.out.println("o salário é maior ou igual a 1500 então continuará sendo 1500");
            }

        scanner.close();
    }
}
