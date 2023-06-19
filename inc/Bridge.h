//
// Created by serwu on 27.05.2023.
//

#include <iostream>
#include <vector>
#include <mutex>
#include <thread>
#include "Random.h"
#include "Vehicle.h"

#ifndef SO2_P_BRIDGE_H
#define SO2_P_BRIDGE_H

//posiuada różną ilość pasów wjazdowych i wyjazdowych
// każdy pas ma atrybut długości czyli tablicew mutexów
//każda strona ma semafor/policjanta kontrulującego wjazdy na most

class Bridge {
private:
    bool isOpen;
    bool emptyBridge;
    int bridgeLength;
    int linesLeadingInside;
    int linesLeadingOutside;
    std::vector<Vehicle> queueLeadingInside;
    std::vector<Vehicle> queueLeadingOutside;
    std::mutex** mutexLinesArray;
    void closeBridge();
    void openBridge();
    void bridgeOpeningChance();
    void insideLoop();
    void outsideLoop();
public:
    Bridge();
    ~Bridge();
    void operate();

    void pushVehicle(Vehicle vehicle);
    int getQueueLen();
    std::vector<Vehicle> getQueueInside() {
        return this->queueLeadingInside;
    }

    std::vector<Vehicle> getQueueOutside() {
        return this->queueLeadingOutside;
    }

    std::mutex** getMutexArray(){
        return this->mutexLinesArray;
    }

};


#endif //SO2_P_BRIDGE_H
