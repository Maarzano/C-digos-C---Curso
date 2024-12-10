#include <iostream>
using namespace std;

int main() {
    int reservas[30] = {0};
    int codigo, lugares;
    while (true) {
        cout << "Insira o código da mesa (100-129) ou 0 para sair: ";
        cin >> codigo;
        if (codigo == 0) break;
        cout << "Quantos lugares deseja reservar? ";
        cin >> lugares;
        int index = codigo - 100;
        if (index < 0 || index >= 30) {
            cout << "Código de mesa inválido!" << endl;
            continue;
        }
        if (reservas[index] + lugares <= 5) {
            reservas[index] += lugares;
            cout << "Reserva realizada!" << endl;
        } else {
            cout << "Reserva não pôde ser realizada!" << endl;
        }
    }
    return 0;
}
