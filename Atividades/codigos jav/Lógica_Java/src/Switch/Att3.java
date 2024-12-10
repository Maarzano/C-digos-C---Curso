package Switch;
import java.util.Scanner;
public class Att3 {
    public static void main(String[] args) {

        Scanner scanner = new Scanner(System.in);

        System.out.print("escolha entre: Dolar (D) Euro (E) Libra (L) Yenes (Y) ");
            String moeda = scanner.nextLine();

        System.out.print("digite seu valor: ");
            double valor = scanner.nextDouble();

        switch (moeda){
            case "D":
            case "Dolar":
                System.out.println("a converção de real para dolar fica: " + String.format("%.2f", valor/5));
                break;
            case "E":
            case "Euro":
                System.out.println("a converção de real para Euro fica: " + String.format("%.2f", valor/6));
                break;
            case "L":
            case "Libra":
                System.out.println("a converção de real para Libra fica: " + String.format("%.2f", valor/5.5));
                break;
            case "Y":
            case "Yenes":
                System.out.println("a converção de real para Yenes fica: " + String.format("%.2f", (valor * 100)/0.05));
                break;
            default:
                System.out.println("digitou número inválido");
        }
        scanner.close();
    }
}
