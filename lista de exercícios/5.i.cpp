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
    cout << "Números primos entre 1 e 100:" << endl;
    for (int i = 1; i <= 100; i++) {
        if (isPrimo(i)) {
            cout << i << endl;
        }
    }
    return 0;
}
