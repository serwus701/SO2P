//
// Created by serwu on 27.05.2023.
//

#include <cstdlib>
#include <ctime>
#include "../inc/Random.h"

bool Random::getEffectBasedOnChance(int percentChance) {
    srand(time(NULL));

    if (rand() % 100 < percentChance)
        return true;
    return false;
}

int Random::getRandomBridgeLen() {
    srand(time(NULL));

    return rand() % 11 + 10;
}

int Random::getRandomLanesNum() {
    srand(time(NULL));

    return rand() % 3 + 1;
}

int Random::getTimeControllerToSleep() {
    srand(time(NULL));

    return (rand() % 25 + 5) * 1000;
}

int Random::getRandomLength(){
    srand(time(NULL));
    int chance = rand() % 3;
    switch (chance) {
        case 0:
            return 1;
        case 1:
            return 2;
        case 3:
            return 4;
        default:
            return 1;
    }
}