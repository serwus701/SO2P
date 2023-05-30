//
// Created by serwu on 27.05.2023.
//

#include <iostream>
#include <vector>

#ifndef SO2_P_BRIDGE_H
#define SO2_P_BRIDGE_H


class Bridge {
private:
    bool isOpen;
    int bridgeLength;
    int linesLeadingInside;
    int linesLeadingOutside;
    std::vector<int> queueLeadingInside{0};
    std::vector<int> queueLeadingOutside{0};
public:
    Bridge(int bridgeLengthParam, int linesLeadingInsideParam, int linesLeadingOutsideParam);
    ~Bridge();
    void closeBridge();
    void openBridge();
    void operate();
};


#endif //SO2_P_BRIDGE_H
