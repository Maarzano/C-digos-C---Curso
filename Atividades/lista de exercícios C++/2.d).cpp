#include <iostream>
using namespace std;

int main() {
    float num1, num2;
    cout << "Digite o primeiro número: ";
    cin >> num1;
    cout << "Digite o segundo número: ";
    cin >> num2;
    if (num2 != 0) {
        cout << "A divisão é: " << (num1 / num2) << endl;
    } else {
        cout << "Divisão por zero não permitida." << endl;
    }
    return 0;
}