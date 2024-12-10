/*Crie um programa que receba três lados de um triângulo e imprima se 
ele é equilátero (todos os lados iguais), isósceles (dois lados iguais) ou escaleno (todos os lados diferentes).*/
package attIf;
import java.util.Scanner;
public class Att7 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("digite o 1° lado do triangulo: ");
            int lado1 = scanner.nextInt();

        System.out.println("digite o 2° lado do triangulo:");
            int lado2 = scanner.nextInt();

        System.out.println("digite o 3° lado do triangulo");
            int lado3 = scanner.nextInt();
            
        if(lado1 == lado2 && lado1 == lado3){
            System.out.println("é um triangulo equilátero");
        } else if (lado1 == lado2 || lado1 == lado3 || lado2 == 3) {
        System.out.println("é um triangulo isósceles");
        } else if (lado1 != lado2 && lado1 != lado3) {
            System.out.println("é um triangulo escaleno");
        }

        scanner.close();
    }
}
