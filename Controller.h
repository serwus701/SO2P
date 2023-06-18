//
// Created by serwu on 27.05.2023.
//

#ifndef SO2_P_CONTROLLER_H
#define SO2_P_CONTROLLER_H

#include <vector>
#include "Bridge.h"
#include "Vehicle.h"

//spawnuje pojazdy, ma dostępo do wsdzystkich mosów i ich czasów przejazdu
//spawnuje za każdytm razem po jednym na każdym moście
//ma macież czasów przejazdów i dyusponuje auto do innego mostuy jak most jest zapchanyt

class Controller {
private:
    int numberOfBridges;
    std::vector<Bridge *> bridges;
    std::vector<Vehicle *> vehicles;

    int** distancesMatrix;

    void createDistancesMatrix();


    void createBridges();

    [[nodiscard]] int stayInArrayBound(int) const;
public:
    int findBetterBridge(int, int);

    explicit Controller(int);


    void spawnVehicle();

    void operate();

    void printDistancesMatrix();
};


#endif //SO2_P_CONTROLLER_H
