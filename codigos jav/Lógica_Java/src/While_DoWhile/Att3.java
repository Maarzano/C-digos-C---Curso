/*Peça ao usuário para inserir números inteiros até que ele digite 0.
Ao final, imprima quantos números pares e ímpares foram digitados*/
package While_DoWhile;
import java.util.Scanner;
public class Att3 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
                int par = 0;
                int impar = 0;
            while (true){
                System.out.println("didgite números inteiros, para parar digite 0");
                int num = scanner.nextInt();
                if (num == 0) break;
                if (num % 2 == 0){
                    par++;
                } else if (num % 2 ==1){
                    impar++;
                }
            }
        System.out.println(impar + " + " + par);
        scanner.close();
    }
}
