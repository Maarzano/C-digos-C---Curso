#include <iostream>
using namespace std;

int main() {
    int op;
    cout << "Escolha a velocidade (1-Baixa, 2-Média, 3-Alta): ";
    cin >> op;
    switch (op) {
        case 1: cout << "Limite de velocidade: 40 km/h" << endl; break;
        case 2: cout << "Limite de velocidade: 80 km/h" << endl; break;
        case 3: cout << "Limite de velocidade: 120 km/h" << endl; break;
        default: cout << "Opção inválida" << endl;
    }
    return 0;
}
