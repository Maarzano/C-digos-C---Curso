/*Simule um cadastro de alunos, onde o programa solicita o nome do aluno e a idade.
 Continue pedindo novas entradas até que o usuário insira "fim".
 Ao final, mostre a quantidade total de alunos cadastrados e a média das idades. */
package While_DoWhile;
import java.util.Scanner;
public class Att7 {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int cout = 0;
        int media = 0;

        while (true) {
        System.out.println("digite o nome do aluno: " + "\n" + "para sair digite 'fim'");
            String aluno = scanner.next();
            if (aluno.equals("fim")) break;
        System.out.println("digite a idade do aluno: ");
        int idade = scanner.nextInt();
        scanner.nextLine();
            cout++;
            media += idade;
            }
            System.out.println("você digitou " + cout + " alunos");
            System.out.println("a media das idades dos alunos é: " + media / cout);
        scanner.close();
        }
}
