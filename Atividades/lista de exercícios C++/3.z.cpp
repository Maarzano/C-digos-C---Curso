#include <iostream>
using namespace std;

int main() {
    string resposta;

    cout << "Você não é um membro inativo de um clube? (sim/não): ";
    cin >> resposta;

    if (resposta == "não" || resposta == "nao") {
        cout << "Por favor, atualize sua inscrição para continuar usufruindo dos benefícios do clube" << endl;
    } else {
        cout << "Você está em dia com sua inscrição." << endl;
    }

    return 0;
}
