//
// Created by serwu on 27.05.2023.
//

#include "../inc/Bridge.h"

Bridge::Bridge() {
    Random * random = new Random();
    this->isOpen = true;
    this->bridgeLength = random->getRandomBridgeLen();
    if(random->getEffectBasedOnChance(80)){
        int value = random->getRandomLanesNum();
        this->linesLeadingInside = value;
        this->linesLeadingOutside = value;
    } else {
        if(random->getEffectBasedOnChance(50)) {
            this->linesLeadingInside = random->getRandomLanesNum();
            this->linesLeadingOutside = 0;
        } else {
            this->linesLeadingInside = 0;
            this->linesLeadingOutside = random->getRandomLanesNum();
        }
    }
    int rows = this->linesLeadingInside + this->linesLeadingOutside;
    this->mutexLinesArray = new std::mutex*[rows];
    for(int i = 0; i < rows; i++){
        mutexLinesArray[i] = new std::mutex[this->bridgeLength];
    }
}

Bridge::~Bridge() {}

void Bridge::closeBridge() {
    this->isOpen = false;
}

void Bridge::openBridge() {
    this->isOpen = true;
}

void Bridge::bridgeOpeningChance() {
    Random *random = new Random();
    if(random->getEffectBasedOnChance(60)){
        closeBridge();
        while(!this->emptyBridge) {
            bool allUnlocked = true;
            for (int i = 0; i < this->linesLeadingInside + this->linesLeadingOutside; i++) {
                for (int j = 0; j < this->bridgeLength; j++) {
                    if (!this->mutexLinesArray[i][j].try_lock()) {
                        allUnlocked = false;
                        break;
                    }
                }
                if (!allUnlocked) {
                    break;
                }
            }
            if (allUnlocked) {
                this->emptyBridge = true;
            }
        }
        std::this_thread::sleep_for(std::chrono::seconds(8));
        openBridge();
    }
}

void Bridge::insideLoop() {
    int selectLaneInside = 0;
    while(true) {
        if(this->isOpen){
            if(this->queueLeadingInside.size() != 0){
                auto vehicleInside = this->queueLeadingInside.at(0);
                auto vehicleInsideLength = vehicleInside.getLength();
                this->queueLeadingInside.erase(this->queueLeadingInside.begin());
                std::vector<int> indexesInside;
                while(vehicleInsideLength > 0 && this->isOpen) {
                    for(int j = 0; j < this->bridgeLength; j++){
                        if(this->mutexLinesArray[selectLaneInside][j].try_lock()){
                            vehicleInsideLength--;
                            indexesInside.push_back(j);
                        }
                        if(vehicleInsideLength == 0) {
                            break;
                        }
                    }
                }
                if(vehicleInsideLength == 0) {
                    std::this_thread::sleep_for(std::chrono::milliseconds(5));
                }
                for(int j = indexesInside.size() - 1; j >= 0 ; j--){
                    this->mutexLinesArray[selectLaneInside][indexesInside[j]].unlock();
                    indexesInside.pop_back();
                }
                selectLaneInside++;
                if(selectLaneInside == this->linesLeadingInside){
                    selectLaneInside = 0;
                }
            }
        }
    }
}

void Bridge::outsideLoop() {
    int selectLaneOutside = this->linesLeadingInside;
    while(true) {
        if (this->isOpen) {
            if (this->queueLeadingOutside.size() != 0) {
                auto vehicleOutside = this->queueLeadingOutside.at(0);
                auto vehicleOutsideLength = vehicleOutside.getLength();
                this->queueLeadingOutside.erase(this->queueLeadingOutside.begin());
                std::vector<int> indexesOutside;
                while (vehicleOutsideLength > 0 && this->isOpen) {
                    for (int j = 0; j < this->bridgeLength; j++) {
                        if (this->mutexLinesArray[selectLaneOutside][j].try_lock()) {
                            vehicleOutsideLength--;
                            indexesOutside.push_back(j);
                        }
                        if(vehicleOutsideLength == 0) {
                            break;
                        }
                    }
                }
                if(vehicleOutsideLength == 0) {
                    std::this_thread::sleep_for(std::chrono::milliseconds(5));
                }
                for (int j = indexesOutside.size() - 1; j >= 0; j--) {
                    this->mutexLinesArray[selectLaneOutside][indexesOutside[j]].unlock();
                    indexesOutside.pop_back();
                }
                selectLaneOutside++;
                if (selectLaneOutside == this->linesLeadingOutside + this->linesLeadingInside) {
                    selectLaneOutside = this->linesLeadingInside;
                }
            }
        }
    }
}

//Zapetlone operacje pojedynczego semafora/policjanta, ale obie strony musza byc zawarte w tym watku.
void Bridge::operate() {
    std::thread insideThread(&Bridge::insideLoop, this);
    std::thread outsideThread(&Bridge::outsideLoop, this);
    std::thread bridgeOpeningThread(&Bridge::bridgeOpeningChance, this);
    insideThread.join();
    outsideThread.join();
    bridgeOpeningThread.join();
}

void Bridge::pushVehicle(Vehicle vehicle) {
    if(vehicle.getIsPrivileged()){
        if(vehicle.getTargetToCity()) {
            this->queueLeadingInside.insert(this->queueLeadingInside.begin(), vehicle);
        } else {
            this->queueLeadingOutside.insert(this->queueLeadingOutside.begin(), vehicle);
        }
    } else {
        if(vehicle.getTargetToCity()) {
            this->queueLeadingInside.push_back(vehicle);
        } else {
            this->queueLeadingOutside.push_back(vehicle);
        }
    }
}

int Bridge::getQueueLen() {
    return 3;
}