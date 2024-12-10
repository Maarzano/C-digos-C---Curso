#include <iostream>
using namespace std;


int main() {
    int opcao;
    cout << "Selecione um animal:" << endl;
    cout << "1. Cachorro" << endl;
    cout << "2. Gato" << endl;
    cout << "3. Pássaro" << endl;
    cout << "Opção: ";
    cin >> opcao;


    switch (opcao) {
        case 1:
            cout << "Você escolheu um cachorro." << endl;
            break;
        case 2:
            cout << "Você escolheu um gato." << endl;
            break;
        case 3:
            cout << "Você escolheu um pássaro." << endl;
            break;
        default:
            cout << "Opção inválida!" << endl;
            break;
    }
    return 0;
}
