#include <iostream>
#include <cmath>  // Para a função M_PI
using namespace std;

int main() {
    float raio, altura;
    cout << "Digite o raio do cilindro: ";
    cin >> raio;
    cout << "Digite a altura do cilindro: ";
    cin >> altura;
    float volume = M_PI * raio * raio * altura;
    cout << "O volume do cilindro é: " << volume << endl;
    return 0;
}
