#include <iostream>
#include <cmath>
using namespace std;

int main() {
    float raio;
    cout << "Digite o raio do círculo: ";
    cin >> raio;
    float area = M_PI * raio * raio;
    cout << "A área do círculo é: " << area << endl;
    return 0;
}
