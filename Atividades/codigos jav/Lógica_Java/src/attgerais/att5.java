// jogo de advinhação
package attgerais;
import java.util.Scanner;
import java.util.Random;
public class att5 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        Random random = new Random();
        int numeroAleatorio = random.nextInt(100) + 1;
        int tentativa = 0;
        boolean continua = true;


        while(continua) {

            System.out.println("digite um número de 1 a 100");
            int chute = scanner.nextInt();

            if (chute < 1 || chute > 100) {
                System.out.println("número inválido tente de novo.");

            } else if (chute < numeroAleatorio) {
                System.out.println("seu chute foi baixo");
                tentativa++;

            } else if (chute > numeroAleatorio) {
                System.out.println("seu chute foi alto");
                tentativa++;

            } else {
                tentativa++;
                System.out.println("você acertou o número!!");
                System.out.println("o número era: " + numeroAleatorio);
                System.out.println("voce tentou: " + tentativa + " vezes ");

                while (true) {

                    System.out.println("quer continuar? (S/N)");
                    String continuar = scanner.next().toLowerCase();

                    if (continuar.equals("s")) {
                        tentativa = 0;
                        numeroAleatorio = random.nextInt(100) + 1;
                        break;

                    } else if (continuar.equals("n")) {
                        System.out.println("obrigado por jogar, saindo...");
                        continua = false;
                        break;
                    } else {
                        System.out.println("caractere inválido!");
                        continue;
                    }
                }
            }
        }
        scanner.close();
    }
}
