#include <iostream>
using namespace std;

int main() {
	int num1;
	
		cout << "digite um ano: " <<"\n";
		cin >> num1;
		
			if ((num1 % 4 == 0 && num1 % 100 != 0) || (num1 % 400 == 0)) {
        cout << num1 << " é um ano bissexto." << endl;
    } else {
        cout << num1 << " não é um ano bissexto." << endl;
    }
}
