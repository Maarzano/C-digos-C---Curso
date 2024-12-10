/*Escreva um programa que receba um número de 1 a 7 e imprima o dia da semana correspondente
 (1 = Domingo, 2 = Segunda-feira, etc.). Caso o número esteja fora do intervalo, imprima "Número inválido".*/
package attIf;
import java.util.Scanner;
public class Att4 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
    System.out.println("escolha um número de 1 a 7"); //acho melhor usar um comando Switch pra isso...
        int num = scanner.nextInt();
    if(num == 1) {
        System.out.println("Domingo");
    } else if (num == 2){
        System.out.println("segunda feira");
    } else if (num ==3){
        System.out.println("terça feira");
    } else if (num ==4){
        System.out.println("quarta");
    } else if (num ==5){
        System.out.println("quinta");
    } else if (num ==6){
        System.out.println("sexta");
    } else if (num ==7){
        System.out.println("sábado");
    } else{
        System.out.println("número invalido");
    }
    scanner.close();
}
}
