//Crie um programa que peça ao usuário um número inteiro e imprima a tabuada desse número (de 1 a 10) usando um loop while.
package While_DoWhile;
import java.util.Scanner;
public class Att2 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("escreva um número inteiro: ");
        int num = scanner.nextInt();
        int cont = 0;
        while (cont <= 10){
            System.out.println(num + " multiplicado por " + cont + " é igual a " +num * cont);
            cont++;
        }
        scanner.close();
    }
}
