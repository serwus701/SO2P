#include "Vehicle.h"
#include "Random.h"


Vehicle::Vehicle() {
    Random * random = new Random();
    this->isPrivileged = random->getEffectBasedOnChance(10);
    this->targetToCity = random->getEffectBasedOnChance(50);
    this->length = random->getRandomLength();
}
