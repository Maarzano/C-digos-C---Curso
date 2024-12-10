#include <iostream>
using namespace std;

int main() {
    int num;
    cout << "Insira um número inteiro positivo: ";
    cin >> num;
    cout << "Divisores de " << num << ": ";
    for (int i = 1; i <= num; i++) {
        if (num % i == 0) {
            cout << i << " ";
        }
    }
    cout << endl;
    return 0;
}
