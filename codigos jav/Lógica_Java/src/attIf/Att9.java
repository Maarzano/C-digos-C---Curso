/*Crie um programa que recebe dois números e um operador (+, -, *, /) e realiza a operação correspondente.
 O programa deve exibir um erro se o usuário tentar dividir por zero.*/
package attIf;
import java.util.Scanner;
public class Att9 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("escreva um número inteiro: ");
        int num1 = scanner.nextInt();

        System.out.print("escreva outro número inteiro: ");
        int num2 = scanner.nextInt();

        System.out.print("escreva um operador (+, -, *, /): ");
        String operador = scanner.next();

            if (operador.equals("+")){
                System.out.println("a soma de " + num1 + " e " + num2 + " é: " + (num1 + num2));
        } else if (operador.equals("-")){
                System.out.println("a subtração de " + num1 + " e " + num2 + " é: " + (num1 - num2));
        } else if (operador.equals("*")){
                System.out.println("a multiplicação de " + num1 + " e " + num2 + " é: " + (num1 * num2));
        } else if (operador.equals("/") && num2 != 0){
                System.out.println("a divisão de " + num1 + " e " + num2 + " é: " + (num1 / num2));
        } else if (operador.equals("/") && num2 == 0){
                System.out.println("ERRO! divisão por zero");
        } else {
                System.out.println("operador inválido");
        } scanner.close();
        }
    }
    
