#include "Controller.h"

int main() {
    int number = 1;
    Controller *controller = new Controller(number);
    std::thread mainThread(&Controller::operate, controller);
    mainThread.join();
}

//male i duże auta
//semafor - paczkowanie samochodów
//czas przejazdu to pewna liczna iteracji badz losowo
//sprawdzac czy samochód zszedl z semafora i jak tak to wpuszczac

//maciez czasow przejazdu mostow


