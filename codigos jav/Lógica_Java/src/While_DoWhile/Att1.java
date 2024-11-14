package While_DoWhile;

import java.util.Scanner;

public class Att1 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Escreva sua idade: ");
        int idade = scanner.nextInt();
        while (true) {
            if (idade > 17){
                System.out.println("maior de idade: ");
            }else{
                System.out.println("menor de idade");
            }

            System.out.println("Escreva sua idade: ");
            idade = scanner.nextInt();

            if (idade ==0){
                break;
            }
        }
        scanner.close();
    }
}
