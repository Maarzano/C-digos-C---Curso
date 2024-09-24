#include <iostream>
#include <climits>
using namespace std;

int main() {
    int num, maior = INT_MIN;
    cout << "Insira números inteiros (digite -1 para parar): ";
    while (true) {
        cin >> num;
        if (num == -1) break;
        if (num > maior) maior = num;
    }
    cout << "Maior número: " << maior << endl;
    return 0;
}
