package attgerais;
// 4 - Faça um algoritmo que receba um número inteiro e imprima na tela o seu antecessor e o seu sucessor.

import java.util.Scanner;
public class att4 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("escreva um número inteiro: ");
           int Num = scanner.nextInt();
            System.out.println("seu antecessor é: "+ (Num-1)+" e seu sucessor é: "+(Num+1));
        scanner.close();
    }
}
