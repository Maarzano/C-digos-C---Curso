#include <iostream>
using namespace std;

int main() {
    string resposta;

    cout << "Você não deseja cancelar a operação? (sim/não): ";
    cin >> resposta;

    if (resposta == "não" || resposta == "nao") {
        cout << "Por favor, confirme o cancelamento da operação" << endl;
    } else {
        cout << "Operação não cancelada." << endl;
    }

    return 0;
}