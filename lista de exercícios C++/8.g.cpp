#include <iostream>
#include <algorithm>
using namespace std;

int main() {
    string nomes[5];
    cout << "Insira 5 nomes: ";
    for (int i = 0; i < 5; i++) {
        cin >> nomes[i];
    }
    sort(nomes, nomes + 5);
    cout << "Nomes em ordem alfabética: ";
    for (int i = 0; i < 5; i++) {
        cout << nomes[i] << endl;
    }
    return 0;
}
