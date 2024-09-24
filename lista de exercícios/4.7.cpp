#include <iostream>
using namespace std;

int main() {
    int operacao;
    cout << "Escolha a operação (1-Saque, 2-Depósito, 3-Consulta de Saldo): ";
    cin >> operacao;
    switch (operacao) {
        case 1: cout << "Saque realizado com sucesso." << endl; break;
        case 2: cout << "Depósito realizado com sucesso." << endl; break;
        case 3: cout << "Saldo: R$ 1000,00" << endl; break;
        default: cout << "Operação inválida" << endl;
    }
    return 0;
}