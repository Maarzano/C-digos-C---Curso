#include <iostream>
#include <cmath>  // Para a função sqrt
using namespace std;

int main() {
    float num;
    cout << "Digite um número: ";
    cin >> num;
    if (num >= 0) {
        cout << "A raiz quadrada é: " << sqrt(num) << endl;
    } else {
        cout << "Número negativo não tem raiz quadrada real." << endl;
    }
    return 0;
}
