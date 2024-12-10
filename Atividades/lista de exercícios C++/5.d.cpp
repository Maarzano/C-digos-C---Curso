#include <iostream>
using namespace std;

int main() {
    int num, soma = 0;
    cout << "Insira um número inteiro positivo: ";
    cin >> num;
    for (int i = 1; i <= num; i++) {
        soma += i;
    }
    cout << "Soma: " << soma << endl;
    return 0;
}
