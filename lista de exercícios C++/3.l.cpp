#include <iostream>
using namespace std;


int main() {
    int numero1, numero2;


    cout << "Digite o primeiro número inteiro: ";
    cin >> numero1;
    cout << "Digite o segundo número inteiro: ";
    cin >> numero2;


    int diferenca = numero1 - numero2;


       if (diferenca < 0) {
        diferenca = -diferenca;
    }


    if (diferenca <= 10) {
        cout << "A diferença entre os números é menor ou igual a 10." << endl;
    } else {
        cout << "A diferença entre os números é maior que 10." << endl;
    }
    return 0;
}
