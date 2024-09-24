#include <iostream>
using namespace std;

int main() {
    int num, soma = 0;
    cout << "Insira números inteiros (digite -1 para parar): ";
    while (true) {
        cin >> num;
        if (num == -1) break;
        soma += num;
    }
    cout << "Soma: " << soma << endl;
    return 0;
}
