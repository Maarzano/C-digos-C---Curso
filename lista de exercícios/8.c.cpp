#include <iostream>
using namespace std;

int main() {
    int vet[5] = {1, 2, 3, 4, 5};
    int maior = vet[0];
    for (int i = 1; i < 5; i++) {
        if (vet[i] > maior) {
            maior = vet[i];
        }
    }
    cout << "Maior valor: " << maior << endl;
    return 0;
}
