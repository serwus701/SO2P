//
// Created by serwu on 27.05.2023.
//

#include "windows.h"

#include "Controller.h"
#include "Random.h"


Controller::Controller(int numberOfBridgesParam) {
    this->numberOfBridges = numberOfBridgesParam;
    createBridges();
}

void Controller::createBridges() {
    auto random = new Random();
    for(int i = 0; i < this->numberOfBridges; i++){
        this->bridges.push_back(new Bridge());
    }
}

void Controller::spawnVehicle() {
    this->vehicles.push_back(new Vehicle());
}

void Controller::operate(){
    auto random = new Random();
    while(true){
        for (auto bridge: this->bridges) {
            bridge->pushVehicle();
        }
        Sleep(random.getTimeControllerToSleep);

    }
    //Co x sekund tworz samochod
    //Dysponowanie samochodami miedzy mostami
    //  - m.in wybieranie mostu zastepczego na przejazd
}

/*
 * dwóch policjantów/ kontrolerów którzy sprawdzają czy most jest pusty
 * i puszczają samochody na most. (jeden policjant na jedna strone mostu i wspolpracuja)
 *
 * czy linia powinna byc wylacznie jednokierunkowa, czy dwukierunkowa ze zmianami kierunku jazdy (raczej to)
 * czy mutexa/atomica zrobic jako tablice zajetosci pasa?
 */
