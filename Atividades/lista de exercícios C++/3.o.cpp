#include <iostream>
using namespace std;

int main() {
    char desejaComprar;
    char temDinheiro;

    cout << "Você deseja comprar um carro novo? (s/n): ";
    cin >> desejaComprar;
    cout << "Você tem dinheiro suficiente? (s/n): ";
    cin >> temDinheiro;

    if ((desejaComprar == 's' || desejaComprar == 'S') && (temDinheiro == 's' || temDinheiro == 'S')) {
        cout << "Parabéns, você pode comprar um carro novo!" << endl;
    } else {
        cout << "Você não pode comprar um carro novo." << endl;
    }

    return 0;
}
