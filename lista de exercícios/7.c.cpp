#include <iostream>
using namespace std;

int main() {
    int num, soma = 0;
    do {
        cout << "Insira números inteiros (digite -1 para parar): ";
        cin >> num;
        if (num != -1) {
            soma += num;
        }
    } while (num != -1);
    cout << "Soma: " << soma << endl;
    return 0;
}
