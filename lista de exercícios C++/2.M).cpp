#include <iostream>
using namespace std;

int main() {
    float celsius;
    cout << "Digite a temperatura em Celsius: ";
    cin >> celsius;
    float fahrenheit = (celsius * 9 / 5) + 32;
    cout << "A temperatura em Fahrenheit é: " << fahrenheit << endl;
    return 0;
}
