#include <iostream>
using namespace std;

int main() {
    int num;
    do {
        cout << "Insira um número inteiro: ";
        cin >> num;
        for (int i = 1; i <= 10; i++) {
            cout << num << " x " << i << " = " << num * i << endl;
        }
    } while (num <= 0);
    return 0;
}
