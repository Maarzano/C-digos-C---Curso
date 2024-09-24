#include <iostream>
using namespace std;

int main() {
    float numeros[100], soma = 0;
    int cont30 = 0, maiorMedia = 0, igualMedia = 0;
    for (int i = 0; i < 100; i++) {
        cout << "Insira um número: ";
        cin >> numeros[i];
        soma += numeros[i];
    }
    float media = soma / 100;
    for (int i = 0; i < 100; i++) {
        if (numeros[i] == 30) cont30++;
        if (numeros[i] > media) maiorMedia++;
        if (numeros[i] == media) igualMedia++;
    }
    cout << "Números iguais a 30: " << cont30 << endl;
    cout << "Números maiores que a média: " << maiorMedia << endl;
    cout << "Números iguais à média: " << igualMedia << endl;
    return 0;
}
