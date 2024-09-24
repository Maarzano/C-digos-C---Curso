#include <iostream>
using namespace std;

int main() {
    string palavra;
    cout << "Insira uma palavra: ";
    cin >> palavra;
    for (char letra : palavra) {
        cout << letra << endl;
    }
    return 0;
}
