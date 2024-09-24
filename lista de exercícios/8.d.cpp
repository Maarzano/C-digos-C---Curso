#include <iostream>
using namespace std;

int main() {
    int vet[5] = {5, 3, 8, 1, 4};
    int menor = vet[0];
    for (int i = 1; i < 5; i++) {
        if (vet[i] < menor) {
            menor = vet[i];
        }
    }
    cout << "Menor valor: " << menor << endl;
    return 0;
}
