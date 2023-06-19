#include "Vehicle.h"
#include "Random.h"


Vehicle::Vehicle(int idParam) {
    Random * random = new Random();
    this->id = idParam;
    this->isPrivileged = random->getEffectBasedOnChance(10);
    this->targetToCity = random->getEffectBasedOnChance(50);
    this->length = random->getRandomLength();
}

int Vehicle::getId() {
    return this->id;
}

bool Vehicle::getIsPrivileged() {
    return this->isPrivileged;
}

bool Vehicle::getTargetToCity() {
    return this->targetToCity;
}

int Vehicle::getLength() {
    return this->length;
}