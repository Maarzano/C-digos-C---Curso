#include <iostream>
using namespace std;

int main() {
    double valorHora, horasTrabalhadas;

    cout << "Informe o valor da hora: R$ ";
    cin >> valorHora;
    cout << "Informe a quantidade de horas trabalhadas no mês: ";
    cin >> horasTrabalhadas;

    double salarioBruto = valorHora * horasTrabalhadas;

    double descontoIR;
    if (salarioBruto <= 900) {
        descontoIR = 0;
    } else if (salarioBruto <= 1500) {
        descontoIR = salarioBruto * 0.05;
    } else if (salarioBruto <= 2500) {
        descontoIR = salarioBruto * 0.10;
    } else {
        descontoIR = salarioBruto * 0.20;
    }

    double descontoINSS = salarioBruto * 0.10;

    double fgts = salarioBruto * 0.11;

    double totalDescontos = descontoIR + descontoINSS;

    double salarioLiquido = salarioBruto - totalDescontos;

    cout << "Salário Bruto: R$ " << salarioBruto << endl;
    cout << "(-) IR (" << (descontoIR / salarioBruto) * 100 << "%) : R$ " << descontoIR << endl;
    cout << "(-) INSS (10%) : R$ " << descontoINSS << endl;
    cout << "FGTS (11%) : R$ " << fgts << endl;
    cout << "Total de descontos : R$ " << totalDescontos << endl;
    cout << "Salário Líquido : R$ " << salarioLiquido << endl;
    return 0;
}