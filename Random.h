//
// Created by serwu on 27.05.2023.
//

#ifndef SO2_P_RANDOM_H
#define SO2_P_RANDOM_H


class Random {
public:
    bool getEffectBasedOnChance(int percentChance);

    int getRandomBridgeLen();
    int getRandomLanesNum();

    int getTimeControllerToSleep();
};


#endif //SO2_P_RANDOM_H
