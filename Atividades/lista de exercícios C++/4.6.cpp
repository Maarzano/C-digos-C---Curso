#include <iostream>
using namespace std;

int main() {
    char tamanho;
    cout << "Escolha o tamanho da camiseta (P, M, G): ";
    cin >> tamanho;
    switch (tamanho) {
        case 'P': cout << "Preço: R$ 30,00" << endl; break;
        case 'M': cout << "Preço: R$ 35,00" << endl; break;
        case 'G': cout << "Preço: R$ 40,00" << endl; break;
        default: cout << "Tamanho inválido" << endl;
    }
    return 0;
}
