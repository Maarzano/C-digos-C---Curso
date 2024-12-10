#include <iostream>
#include <string>
using namespace std;

int main() {
    string palavra;

    cout << "Digite uma palavra: ";
    cin.ignore(); // Limpar o buffer de entrada
    getline(cin, palavra);

    if (!palavra.empty()) {
        cout << "A palavra não é vazia" << endl;
    } else {
        cout << "A palavra é vazia" << endl;
    }

    return 0;
}
