//
// Created by serwu on 27.05.2023.
//

#include "Bridge.h"

Bridge::Bridge(int bridgeLengthParam, int linesLeadingInsideParam, int linesLeadingOutsideParam){
    this->isOpen = false;
    this->bridgeLength = bridgeLengthParam;
    this->linesLeadingInside = linesLeadingInsideParam;
    this->linesLeadingOutside = linesLeadingOutsideParam;
}

Bridge::~Bridge() {}

void Bridge::closeBridge() {
    this->isOpen = false;
}

void Bridge::openBridge() {
    this->isOpen = true;
}

void Bridge::operate() {
    //Otwieranie i zamykanie sie
    //Dysponowanie ruchem
    //  - Pierszenstwo pojazdow uprzywilejowanych
    //  - Zarzadzanie kolejkom - wysylanie aut w zaleznosci od liczby linii
}