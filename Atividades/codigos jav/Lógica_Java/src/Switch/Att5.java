/*Crie um programa que funcione como um conversor de unidades.
 O programa deve exibir um menu inicial onde o usuário escolhe o tipo de unidade que deseja converter: comprimento, temperatura ou moeda.
  Cada tipo de unidade terá um submenu para escolher a conversão específica. */
package Switch;
import java.util.Scanner;
public class Att5 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        boolean resposta = true;
        while (resposta){
        System.out.println("escolha comprimento, temperatura ou moeda: ");
        String escolha = scanner.nextLine();
        switch (escolha) {
            case "comprimento":
            System.out.println("agora escolha para qual unidade deseja converter, caolocando o número correspondente: ");
            System.out.println();
            System.out.println( "1 - centímetros para metros\n" +
                                "2 - metros para centímetros\n" +
                                "3 - kilometros para metros\n" +
                                "4 - metros para kilometros");
                                escolha = scanner.nextLine();
            switch (escolha) {
                case "1":
                System.out.println("Digite o valor em centímetros: ");
                double cm = scanner.nextDouble();
                double m = cm / 100;
                System.out.println("O valor em metros é: " + m);
                System.out.println("quer fazer outra conversão? (sim ou nao)");

                if (scanner.next().equals("sim")){
                resposta = true;
            } else {
             resposta = false;
             continue;
            }
                break;
                case "2":
                System.out.println("Digite o valor em metros: ");
                double m2 = scanner.nextDouble();
                double cm2 = m2 * 100;
                System.out.println("O valor em centímetros é: " + cm2);
                System.out.println("quer fazer outra conversão? (sim ou nao)");

                if (scanner.next().equals("sim")){
                resposta = true;
            } else {
             resposta = false;
             continue;
            }
                break;
                case "3":
                System.out.println("Digite o valor em kilometros: ");
                double km = scanner.nextDouble();
                double m3 = km * 1000;
                System.out.println("O valor em metros é: " + m3);
                System.out.println("quer fazer outra conversão? (sim ou nao)");

                if (scanner.next().equals("sim")){
                resposta = true;
            } else {
             resposta = false;
             continue;
            }
                break;
                case "4":
                System.out.println("Digite o valor em metros: ");
                double m4 = scanner.nextDouble();
                double km4 = m4 / 1000;
                System.out.println("O valor em kilometros é: " + km4);
                System.out.println("quer fazer outra conversão? (sim ou nao)");

                if (scanner.next().equals("sim")){
                resposta = true;
            } else {
             resposta = false;
             continue;
            }
                break;
            }
            break;
            case "temperatura":
                System.out.println("agora escolha para qual unidade deseja converter, caolocando o número correspondente: ");
                System.out.println();
                System.out.println( "1 - Celsius para Fahrenheit\n" +
                                    "2 - Fahrenheit para Celsius\n" +
                                    "3 - Kelvin para Celsius\n" +
                                    "4 - Celsius para Kelvin");
                                    escolha = scanner.nextLine();
                switch (escolha) {
                    case "1":
                    System.out.println("Digite o valor em Celsius: ");
                    double c = scanner.nextDouble();
                    double f = (c * 1.8) + 32;
                    System.out.println("O valor em Fahrenheit é: " + f);
                    System.out.println("quer fazer outra conversão? (sim ou nao)");

                if (scanner.next().equals("sim")){
                resposta = true;
            } else {
             resposta = false;
             continue;
            }
                    break;
                    case "2":
                    System.out.println("Digite o valor em Fahrenheit: ");
                    double f2 = scanner.nextDouble();
                    double c2 = (f2 - 32) / 1.8;
                    System.out.println("O valor em Celsius é: " + c2);
                    System.out.println("quer fazer outra conversão? (sim ou nao)");

                if (scanner.next().equals("sim")){
                resposta = true;
            } else {
             resposta = false;
             continue;
            }
                    break;
                    case "3":
                    System.out.println("Digite o valor em Kelvin: ");
                    double k = scanner.nextDouble();
                    double c3 = k - 273.15;
                    System.out.println("O valor em Celsius é: " + c3);
                    System.out.println("quer fazer outra conversão? (sim ou nao)");

                if (scanner.next().equals("sim")){
                resposta = true;
            } else {
             resposta = false;
             continue;
            }
                    break;
                    case "4":
                    System.out.println("Digite o valor em Celsius: ");
                    double c4 = scanner.nextDouble();
                    double k4 = c4 + 273.15;
                    System.out.println("O valor em Kelvin é: " + k4);
                    System.out.println("quer fazer outra conversão? (sim ou nao)");

                if (scanner.next().equals("sim")){
                resposta = true;
            } else {
             resposta = false;
             continue;
            }
                    break;
                }
                break;
            case "moeda":
                System.out.println("agora escolha para qual unidade deseja converter, caolocando o número correspondente: ");
                System.out.println();
                System.out.println( "1 - Real para Dolar\n" +
                                    "2 - Dolar para Real\n" +
                                    "3 - Real para Euro\n" +
                                    "4 - Euro para Real");
                                    escolha = scanner.nextLine();
                switch (escolha) {
                    case "1":
                    System.out.println("Digite o valor em Real: ");
                    double r = scanner.nextDouble();
                    double d = r / 5;
                    System.out.println("O valor em Dolar é: " + d);
                    System.out.println("quer fazer outra conversão? (sim ou nao)");

                if (scanner.next().equals("sim")){
                resposta = true;
            } else {
             resposta = false;
             continue;
            }
                    break;
                    case "2":
                    System.out.println("Digite o valor em Dolar: ");
                    double d2 = scanner.nextDouble();
                    double r2 = d2 * 5;
                    System.out.println("O valor em Real é: " + r2);
                    System.out.println("quer fazer outra conversão? (sim ou nao)");

                if (scanner.next().equals("sim")){
                resposta = true;
            } else {
             resposta = false;
             continue;
            }
                    break;
                    case "3":
                    System.out.println("Digite o valor em Real: ");
                    double r3 = scanner.nextDouble();
                    double e = r3 / 6;
                    System.out.println("O valor em Euro é: " + e);
                    System.out.println("quer fazer outra conversão? (sim ou nao)");

                if (scanner.next().equals("sim")){
                resposta = true;
            } else {
             resposta = false;
             continue;
            }
                    break;
                    case "4":
                    System.out.println("Digite o valor em Euro: ");
                    double e2 = scanner.nextDouble();
                    double r4 = e2 * 6;
                    System.out.println("O valor em Real é: " + r4);
                    System.out.println("quer fazer outra conversão? (sim ou nao)");

                if (scanner.next().equals("sim")){
                resposta = true;
            } else {
             resposta = false;
             continue;
            }
                    break;
                }
                break;
            }
        }
        scanner.close();
    }
}
