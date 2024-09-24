#include <iostream>
using namespace std;

int main() {
    int lado1, lado2, lado3;
    cout << "Digite os três lados do triângulo: ";
    cin >> lado1 >> lado2 >> lado3;

    if (lado1 == lado2 && lado2 == lado3) {
        cout << "O triângulo é equilátero." << endl;
    } else if (lado1 == lado2 || lado2 == lado3 || lado1 == lado3) {
        cout << "O triângulo é isósceles." << endl;
    } else {
        cout << "O triângulo é escaleno." << endl;
    }

    return 0;
}
