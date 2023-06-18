//
// Created by serwu on 27.05.2023.
//

#include "windows.h"
#include "Controller.h"
#include "Random.h"
#include <cmath>

Controller::Controller(int numberOfBridgesParam) {
    this->numberOfBridges = numberOfBridgesParam;
    createBridges();
    createDistancesMatrix();
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
        int avgLen = 0;
        for (auto bridge: this->bridges) {
            avgLen += bridge->getQueueLen();
        }
        avgLen /= this->bridges.size();

        for (auto bridge: this->bridges) {
            auto newVehicle = new Vehicle();
            vehicles.push_back(newVehicle);
            bridge->pushVehicle(*newVehicle);
        }
        Sleep(random->getTimeControllerToSleep());
    }
    //Co x sekund tworz samochod
    //Dysponowanie samochodami miedzy mostami
    //  - m.in wybieranie mostu zastepczego na przejazd
}

void Controller::createDistancesMatrix() {
    this->distancesMatrix = new int*[numberOfBridges];
    for (int i = 0; i < numberOfBridges; i++) {
        distancesMatrix[i] = new int[numberOfBridges];
    }

    for (int i = 0; i < numberOfBridges; ++i) {
        for (int j = 0; j < numberOfBridges; ++j) {
            distancesMatrix[i][j] = int(sqrt(2 * pow(abs(i - j), 2)));
        }
    }
    for (int i = 0; i < numberOfBridges; ++i) {
        for (int j = 0; j < numberOfBridges; ++j) {
            std::cout << distancesMatrix[i][j] << std::endl;
        }
    }
}
