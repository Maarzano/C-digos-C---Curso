#include <iostream>
using namespace std;

int main() {
    int num, soma = 0;
    do {
        cout << "Insira números inteiros (digite um número negativo para parar): ";
        cin >> num;
        if (num >= 0) {
            soma += num;
        }
    } while (num >= 0);
    cout << "Soma: " << soma << endl;
    return 0;
}
