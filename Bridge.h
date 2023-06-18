//
// Created by serwu on 27.05.2023.
//

#include <iostream>
#include <vector>
#include <mutex>

#ifndef SO2_P_BRIDGE_H
#define SO2_P_BRIDGE_H

#include "Vehicle.h"

//posiuada różną ilość pasów wjazdowych i wyjazdowych
// każdy pas ma atrybut długości czyli tablicew mutexów
//każda strona ma semafor/policjanta kontrulującego wjazdy na most

class Bridge {
private:
    bool isOpen;
    int bridgeLength;
    int linesLeadingInside;
    int linesLeadingOutside;
    std::vector<int> queueLeadingInside{0};
    std::vector<int> queueLeadingOutside{0};
    std::mutex** mutexLinesArray;

    void closeBridge();
    void openBridge();
public:
    Bridge();
    ~Bridge();
    void operate();

    void pushVehicle(Vehicle);
    int getQueueLen();
};


#endif //SO2_P_BRIDGE_H
