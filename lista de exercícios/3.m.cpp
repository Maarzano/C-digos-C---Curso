#include <iostream>
using namespace std;

int main() {
    int mes;
    cout << "Escolha um mês (1 a 12): ";
    cin >> mes;

    switch (mes) {
        case 1: case 3: case 5: case 7: case 8: case 10: case 12:
            cout << "O mês escolhido tem 31 dias." << endl;
            break;
        case 4: case 6: case 9: case 11:
            cout << "O mês escolhido tem 30 dias." << endl;
            break;
        case 2:
            cout << "O mês de fevereiro tem 28 ou 29 dias, dependendo se o ano é bissexto." << endl;
            break;
        default:
            cout << "Mês inválido." << endl;
    }

    return 0;
}
