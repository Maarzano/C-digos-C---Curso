/*Para a simulação de caixa eletrônico, crie um programa com um saldo inicial (por exemplo, R$1000,00)
 e um loop while que exiba um menu com quatro opções: 1 para depósito, 2 para saque, 3 para ver o saldo e 4 para sair.
  Verifique cada operação para evitar erros, como um saque maior que o saldo disponível, e aceite apenas valores numéricos válidos para depósitos e saques.
  O menu deve ser exibido repetidamente até que o usuário escolha a opção de sair. */
package While_DoWhile;
import java.util.Scanner;
public class Att9 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        double SaldoInicial = 1000.00;

        while (true) {
            System.out.println("Escolha uma opcao:");
            System.out.println("1 - Deposito");
            System.out.println("2 - Saque");
            System.out.println("3 - Saldo");
            System.out.println("4 - Sair");
                int opcao = scanner.nextInt();

                if (opcao == 1){

                    System.out.println("Digite o valor do deposito:");
                    double deposito = scanner.nextDouble();
                    SaldoInicial += deposito;
                    if ( deposito <= 0){
                        System.out.println("Valor invalido!");
                    }

                } else if (opcao == 2){
                    System.out.println("Digite o valor do saque:");
                    double saque = scanner.nextDouble();
                    if (saque > SaldoInicial){
                        System.out.println("Saldo insuficiente!");
                    } else if (saque <= 0){
                        System.out.println("Valor invalido!");
                } else SaldoInicial -= saque;

                } else if (opcao == 3){
                    System.out.println("Saldo atual: " + SaldoInicial);
                } else if (opcao == 4){
                    System.out.println("Obrigado por usar nosso sistema!");
                    break;
                }
                }
        scanner.close();
    }
}
