/*Escreva um programa que receba um valor de venda e calcule o imposto a ser pago. 
Se o valor for acima de R$ 1.000,00, o imposto é de 20%; se for até R$ 1.000,00, o imposto é de 10%.*/
package attIf;
import java.util.Scanner;
public class Att8 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("escreva o valor de sua venda R$: ");
            Double venda = scanner.nextDouble();
            if (venda > 1000){
                System.out.println("o imposto de " + venda + "fica " + venda * 0.2);
            } else {
                System.out.println("o imposto de " + venda + "fica " + venda * 0.1);
            }
        scanner.close();
    }
}
