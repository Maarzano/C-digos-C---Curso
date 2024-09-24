#include <iostream>
using namespace std;

int main() {
    int num;
    cout << "Digite um número inteiro: ";
    cin >> num;

    if (num > 10 || num < 0) {
        cout << "Número inválido!" << endl;
    } else {
        cout << "Número válido." << endl;
    }

    return 0;
}
