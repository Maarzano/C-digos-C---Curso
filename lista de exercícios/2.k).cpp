#include <iostream>
using namespace std;

int main() {
    float num1, num2, num3;
    cout << "Digite o primeiro número: ";
    cin >> num1;
    cout << "Digite o segundo número: ";
    cin >> num2;
    cout << "Digite o terceiro número: ";
    cin >> num3;
    float media = (num1 + num2 + num3) / 3;
    cout << "A média aritmética é: " << media << endl;
    return 0;
}
