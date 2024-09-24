#include <iostream>
using namespace std;

int main() {
    int idioma;
    cout << "Escolha o idioma (1-Português, 2-Inglês): ";
    cin >> idioma;
    switch (idioma) {
        case 1: cout << "Bem-vindo!" << endl; break;
        case 2: cout << "Welcome!" << endl; break;
        default: cout << "Opção inválida" << endl;
    }
    return 0;
}