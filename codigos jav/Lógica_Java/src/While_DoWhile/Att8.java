/*Crie um programa para controlar o ponto de entrada e saída dos funcionários. 
Cada vez que o programa pergunta, o usuário insere "E" para entrada ou "S" para saída. 
O programa deve manter uma contagem de quantas vezes "E" e "S" foram digitados. 
O programa encerra se o usuário digitar "F" (de finalizar). 
No final, o programa deve mostrar quantos funcionários entraram e quantos saíram. */
package While_DoWhile;
import java.util.Scanner;
public class Att8 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int coutE = 0;
        int coutS = 0;

        System.out.println("Bem vindo!");
        System.out.println("Digite 'E' para entrar e 'S' para sair: ");
        System.out.println("Digite 'F' para finalizar: ");
        
        while (true) {
            String entrada = scanner.nextLine().toUpperCase();
            if (entrada.equals("F")) break;
            else if (entrada.equals("E")) {
                coutE++;
                System.out.println("Entrou");
            } else if (entrada.equals("S")) {
                coutS++;
                 System.out.println("Saiu");
            } else System.out.println("Entrada inválida");
        }
        System.out.println("Entraram " + coutE + " e sairam " + coutS);
        scanner.close();
    }
}
