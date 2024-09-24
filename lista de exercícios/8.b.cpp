#include <iostream>
using namespace std;

int main() {
    float vet[5] = {1.5, 2.5, 3.5, 4.5, 5.5};
    float soma = 0;
    for (int i = 0; i < 5; i++) {
        soma += vet[i];
    }
    cout << "Média: " << soma / 5 << endl;
    return 0;
}
