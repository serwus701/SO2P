//
// Created by serwu on 27.05.2023.
//

#ifndef SO2_P_CONTROLLER_H
#define SO2_P_CONTROLLER_H

#include <vector>
#include "Bridge.h"
#include "Vehicle.h"

class Controller {
    int numberOfBridges;
    std::vector<Bridge *> bridges;
    std::vector<Vehicle *> vehicles;

    Controller(int numberOfBridgesParam);

    void createBridges();

    void spawnVehicle();

    void operate();
};


#endif //SO2_P_CONTROLLER_H
