#include <iostream>
using namespace std;

int main() {
    string resposta;

    cout << "Você deseja comprar um produto? (sim/s): ";
    cin >> resposta;

    if (resposta == "sim" || resposta == "s") {
        cout << "Obrigado pela compra!" << endl;
    } else {
        cout << "Compra não realizada." << endl;
    }

    return 0;
}
