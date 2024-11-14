package Switch;
/*Escreva um algoritmo que leia o código do item adquirido pelo consumidor e a
quantidade, calculando e mostrando o valor a pagar. Não será necessário exibir o produto
e o valor, somente o valor final.*/
import java.util.Scanner;
public class Att4 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Código Produto Preço Unitário (R$)\n" +
                "100 Cachorro quente R$ 1,70\n" +
                "101 Bauru Simples R$ 2,30\n" +
                "102 Bauru com ovo R$ 2,60\n" +
                "103 Hamburguer R$ 2,40\n" +
                "104 Cheeseburguer R$ 2,50\n" +
                "105 Refrigerante R$ 1,00\n" +
                "Escolha seu produto pelo número dele");
                    int produto = scanner.nextInt();
                    switch (produto){
                        case 100:
                            System.out.println("escolha a quantidade: ");
                            int quantidade = scanner.nextInt();
                            System.out.println("o preço ficou: R$" + (1.70 * quantidade));
                            break;
                        case 101:
                            System.out.println("escolha a quantidade: ");
                            quantidade = scanner.nextInt();
                            System.out.println("o preço ficou: R$" + (2.30 * quantidade));
                            break;
                        case 102:
                            System.out.println("escolha a quantidade: ");
                            quantidade = scanner.nextInt();
                            System.out.println("o preço ficou: R$" + (2.60 * quantidade));
                            break;
                        case 103:
                            System.out.println("escolha a quantidade: ");
                            quantidade = scanner.nextInt();
                            System.out.println("o preço ficou: R$" + (2.40 * quantidade));
                            break;
                        case 104:
                            System.out.println("escolha a quantidade: ");
                            quantidade = scanner.nextInt();
                            System.out.println("o preço ficou: R$" + (2.50 * quantidade));
                            break;
                        case 105:
                            System.out.println("escolha a quantidade: ");
                            quantidade = scanner.nextInt();
                            System.out.println("o preço ficou: R$" + (1.00 * quantidade));
                            break;
                        default:
                            System.out.println("opção inválida");
                    }
                    scanner.close();
    }
}
