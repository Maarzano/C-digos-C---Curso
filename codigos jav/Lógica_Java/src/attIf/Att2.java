//Crie um programa que receba a nota de um aluno (0 a 10) e imprima "Aprovado" se a nota for 7 ou mais e "Reprovado" se for menor que 7.
package attIf;
import java.util.Scanner;
public class Att2 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("informe sua nota: ");
            int nota = scanner.nextInt();
            if (nota >= 7){
                System.out.println("aprovado");
            } else if ( nota < 7){
                System.out.println("reprovado");
            }
        scanner.close();
    }

}
