#include <iostream>
using namespace std;

int main() {
    int num;
    cout << "Insira um número inteiro positivo: ";
    cin >> num;
    int i = 0;
    while (i <= num) {
        if (i % 2 == 0) {
            cout << i << endl;
        }
        i++;
    }
    return 0;
}
