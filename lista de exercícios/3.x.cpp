#include <iostream>
using namespace std;

int main() {
    string resposta;

    cout << "Você não é um robô? (sim/não): ";
    cin >> resposta;

    if (resposta == "não" || resposta == "nao") {
        cout << "Por favor, prove que você não é um robô" << endl;
    } else {
        cout << "Obrigado pela confirmação." << endl;
    }

    return 0;
}
