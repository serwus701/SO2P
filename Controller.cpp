//
// Created by serwu on 27.05.2023.
//

#include "Controller.h"

Controller::Controller(int numberOfBridgesParam) {
    this->numberOfBridges = numberOfBridgesParam;
    createBridges();
    createDistancesMatrix();
}

void Controller::createBridges() {
    auto random = new Random();
    for (int i = 0; i < this->numberOfBridges; i++) {
        this->bridges.push_back(new Bridge());
        this->bridgesTheads.push_back(std::thread (&Bridge::operate, this->bridges.at(i)));
    }
}

void Controller::operate() {
    auto random = new Random();
    while (true) {
        for (int i = 0; i < numberOfBridges; ++i) {
            auto newVehicle1 = new Vehicle(this->newVehicleID);
            this->newVehicleID++;
            auto newVehicle2 = new Vehicle(this->newVehicleID);
            this->newVehicleID++;
            auto bridge = bridges[i];
            int betterBridgePos = findBetterBridge(bridge->getQueueLen(), i);
            vehicles.push_back(newVehicle1);
            vehicles.push_back(newVehicle2);
            if (betterBridgePos == -1){
                bridge->pushVehicle(*newVehicle1);
                bridge->pushVehicle(*newVehicle2);
            }
            else{
                bridges[i]->pushVehicle(*newVehicle1);
                bridges[i]->pushVehicle(*newVehicle2);
            }
        }
        std::this_thread::sleep_for(std::chrono::milliseconds(random->getTimeControllerToSleep()));
    }
}

void Controller::createDistancesMatrix() {
    this->distancesMatrix = new int *[numberOfBridges];
    for (int i = 0; i < numberOfBridges; i++) {
        distancesMatrix[i] = new int[numberOfBridges];
    }

    for (int i = 0; i < numberOfBridges; ++i) {
        for (int j = 0; j < numberOfBridges; ++j) {
            distancesMatrix[i][j] = int(sqrt(2 * pow(abs(i - j), 2)));
        }
    }
}

void Controller::printDistancesMatrix() {
    for (int i = 0; i < numberOfBridges; ++i) {
        for (int j = 0; j < numberOfBridges; ++j) {
            std::cout << distancesMatrix[i][j] << " ";
        }
        std::cout << std::endl;
    }
}

int Controller::findBetterBridge(int currBridgeCapacity, int currBridgePos) {
    for (int i = 0; i < numberOfBridges; ++i) {
        for (int j = 1; j < numberOfBridges / 2; ++j) {
            int nextBridgeCapacity =
                    this->bridges[stayInArrayBound(currBridgePos + j)]->getQueueLen();
            int prevBridgeCapacity =
                    this->bridges[stayInArrayBound(currBridgePos - j)]->getQueueLen();

            if ((currBridgeCapacity - nextBridgeCapacity) > distancesMatrix[currBridgePos][currBridgePos + j]) {
                return (currBridgePos + j);
            }

            if ((currBridgeCapacity - prevBridgeCapacity) > distancesMatrix[currBridgePos][currBridgePos - j]) {
                return (currBridgePos - j);
            }
        }
    }

    return -1;
}

int Controller::stayInArrayBound(int position) const {
    while (position > numberOfBridges - 1)
        position -= numberOfBridges;

    while (position < 0)
        position += numberOfBridges;

    return position;
}
