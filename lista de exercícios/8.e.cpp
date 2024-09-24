#include <iostream>
#include <algorithm>
using namespace std;

int main() {
    int vet[5] = {5, 3, 8, 1, 4};
    sort(vet, vet + 5, greater<int>());
    cout << "Valores em ordem decrescente: ";
    for (int i = 0; i < 5; i++) {
        cout << vet[i] << " ";
    }
    cout << endl;
    return 0;
}
