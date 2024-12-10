#include <iostream>
using namespace std;

int main() {
    char assinante;
    char assistiuSerie;

    cout << "Você é assinante de um serviço de streaming? (s/n): ";
    cin >> assinante;
    cout << "Você já assistiu à série específica? (s/n): ";
    cin >> assistiuSerie;

    if ((assinante == 's' || assinante == 'S') && (assistiuSerie == 's' || assistiuSerie == 'S')) {
        cout << "Ótimo, agora você pode assistir à nova temporada!" << endl;
    } else {
        cout << "Você não pode assistir à nova temporada ainda." << endl;
    }

    return 0;
}
