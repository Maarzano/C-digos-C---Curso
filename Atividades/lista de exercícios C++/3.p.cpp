#include <iostream>
using namespace std;

int main() {
    char temDiploma;
    int idade;

    cout << "Você possui um diploma de ensino superior? (s/n): ";
    cin >> temDiploma;
    cout << "Qual é a sua idade? ";
    cin >> idade;

    if ((temDiploma == 's' || temDiploma == 'S') && idade > 21) {
        cout << "Parabéns, você está qualificado para a vaga!" << endl;
    } else {
        cout << "Você não está qualificado para a vaga." << endl;
    }

    return 0;
}
