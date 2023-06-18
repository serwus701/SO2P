//
// Created by serwu on 27.05.2023.
//

#include "Bridge.h"
#include "Random.h"

Bridge::Bridge() {
    Random * random = new Random();
    this->isOpen = false;
    this->bridgeLength = random->getRandomLength();
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

//Zapetlone operacje pojedynczego semafora/policjanta, ale obie strony musza byc zawarte w tym watku.
//Otwieranie i zamykanie sie
//Dysponowanie ruchem
//  - Pierszenstwo pojazdow uprzywilejowanych
//  - Zarzadzanie kolejkom - wysylanie aut w zaleznosci od liczby linii
void Bridge::operate() {
    //Wpychanie z kolejki na linie
    //Szansa na podniesienie mostu
    //
    
}