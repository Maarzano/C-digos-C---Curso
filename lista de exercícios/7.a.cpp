#include <iostream>
using namespace std;

int main() {
    int num;
    do {
        cout << "Insira um número inteiro positivo: ";
        cin >> num;
        for (int i = 0; i <= num; i += 2) {
            cout << i << endl;
        }
    } while (num <= 0);
    return 0;
}
