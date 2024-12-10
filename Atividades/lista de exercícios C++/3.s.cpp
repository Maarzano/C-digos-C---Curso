#include <iostream>
using namespace std;

int main() {
    char adicionarAcucar;
    char adicionarLeite;

    cout << "Você deseja adicionar açúcar ao café? (s/n): ";
    cin >> adicionarAcucar;
    cout << "Você deseja adicionar leite ao café? (s/n): ";
    cin >> adicionarLeite;

    if (adicionarAcucar == 's' || adicionarLeite == 's') {
        cout << "Café com adicional preparado!" << endl;
    } else {
        cout << "Café sem adicionais." << endl;
    }

    return 0;
}
