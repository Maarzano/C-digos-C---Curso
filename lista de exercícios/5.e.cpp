#include <iostream>
using namespace std;

bool isPrimo(int n) {
    if (n < 2) return false;
    for (int i = 2; i * i <= n; i++) {
        if (n % i == 0) return false;
    }
    return true;
}

int main() {
    int num;
    cout << "Insira um número inteiro: ";
    cin >> num;
    cout << (isPrimo(num) ? "Primo" : "Não é primo") << endl;
    return 0;
}
