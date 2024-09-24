#include <iostream>
#include <algorithm>
using namespace std;

int main() {
    int vet[5] = {5, 3, 8, 1, 4};
    sort(vet, vet + 5);
    cout << "Valores em ordem crescente: ";
    for (int i = 0; i < 5; i++) {
        cout << vet[i] << " ";
    }
    cout << endl;
    return 0;
}
