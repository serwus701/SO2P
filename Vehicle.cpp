//
// Created by serwu on 27.05.2023.
//

#include "Vehicle.h"
#include "Random.h"


Vehicle::Vehicle() {
    Random * random = new Random();
    this->isPrivileged = random->getEffectBasedOnChance(10);
    this->targetToCity = random->getEffectBasedOnChance(50);
}
