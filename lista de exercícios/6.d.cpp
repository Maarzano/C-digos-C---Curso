#include <iostream>
using namespace std;

int main() {
    string senha;
    const string senhaCorreta = "1234";
    int tentativas = 0;
    while (tentativas < 3) {
        cout << "Insira a senha: ";
        cin >> senha;
        if (senha == senhaCorreta) {
            cout << "Senha correta!" << endl;
            return 0;
        }
        tentativas++;
    }
    cout << "Senha incorreta!" << endl;
    return 0;
}
