//Faça um programa que receba um número inteiro e imprima se ele é positivo, negativo ou zero.
package attIf;
import java.util.Scanner;
public class Att3 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("escreva um número inteiro: ");
            int Num = scanner.nextInt();
            if(Num > 0){
                System.out.println("o número é positivo");
            } else if (Num < 0) {
                System.out.println("o número é negativo");
            } else{
                System.out.println("o número é 0");
            }

        scanner.close();
    }
}
