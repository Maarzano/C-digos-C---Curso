#include <iostream>
using namespace std;

int main() {
    float peso, altura;
    cout << "Digite seu peso (em kg): ";
    cin >> peso;
    cout << "Digite sua altura (em metros): ";
    cin >> altura;
    float imc = peso / (altura * altura);
    cout << "O Índice de Massa Corporal (IMC) é: " << imc << endl;
    return 0;
}
