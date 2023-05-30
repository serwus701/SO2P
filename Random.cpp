//
// Created by serwu on 27.05.2023.
//

#include <cstdlib>
#include <ctime>
#include "Random.h"

bool Random::getEffectBasedOnChance(int percentChance) {
    srand(time(NULL));

    if (rand() % 100 < percentChance)
        return true;
    return false;
}

int Random::getRandomBridgeLen() {
    srand(time(NULL));

    return rand() % 30 + 20;
}

int Random::getRandomLanesNum() {
    srand(time(NULL));

    return rand() % 3 + 1;
}

int Random::getTimeControllerToSleep() {
    srand(time(NULL));

    return rand() % 25 + 5;
}
