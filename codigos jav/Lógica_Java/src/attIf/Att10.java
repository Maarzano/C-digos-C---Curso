/*Crie um programa que simula um sistema de login. O usuário insere um nome de usuário e uma senha.
 Se a senha estiver correta, o programa pede um código de autenticação (simule este código com um valor fixo).
 O acesso só é concedido se a senha e o código estiverem corretos. */
package attIf;
import java.util.Scanner;
public class Att10 {
 public static void main(String[] args) {
    Scanner input = new Scanner(System.in);

    String username;
    String password;
    int authenticationCode;

    System.out.print("digite seu nome: ");
    username = input.next();

    int attempts = 0;
    while (attempts < 3) {
        System.out.print("coloque a senha: ");
        password = input.next();
        attempts++;

        if (!password.equals("1234") && attempts <= 2) {
            System.out.println("senha incorreta tente de novo.");
        } else if (attempts == 3 && !password.equals("1234")) {
            System.out.println("acesso negado!");
            break;
        }

        if (password.equals("1234")) {
            System.out.println("senha correta para " + username);

            System.out.print("coloque o codigo de autenticação: ");
            authenticationCode = input.nextInt();

            while (authenticationCode != 1234) {
                System.out.print("código de autenticação incorreto: ");
                authenticationCode = input.nextInt();
            }

            System.out.println("acesso concedido!");
            break;
        }
    }
    input.close();
 }
}