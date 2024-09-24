#include <iostream>
using namespace std;

int main() {
    int mes;
    cout << "Escolha um mês (1-Janeiro, ..., 12-Dezembro): ";
    cin >> mes;
    switch (mes) {
        case 1: case 3: case 5: case 7: case 8: case 10: case 12: cout << "31 dias" << endl; break;
        case 4: case 6: case 9: case 11: cout << "30 dias" << endl; break;
        case 2: cout << "28 ou 29 dias" << endl; break;
        default: cout << "Mês inválido" << endl;
    }
    return 0;
}