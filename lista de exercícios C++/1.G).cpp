#include <iostream>
using namespace std;

int main() {
    string numero_casa, rua, bairro, cidade, estado;
    cout << "Digite o número da casa: ";
    cin >> numero_casa;
    cout << "Digite a rua: ";
    cin.ignore();
    getline(cin, rua);
    cout << "Digite o bairro: ";
    getline(cin, bairro);
    cout << "Digite a cidade: ";
    getline(cin, cidade);
    cout << "Digite o estado: ";
    getline(cin, estado);
    cout << "Endereço completo: " << numero_casa << ", " << rua << ", " << bairro << ", " << cidade << ", " << estado << endl;
    return 0;
}