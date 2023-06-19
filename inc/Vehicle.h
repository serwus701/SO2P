//
// Created by serwu on 27.05.2023.
//

#ifndef SO2_P_VEHICLE_H
#define SO2_P_VEHICLE_H



class Vehicle {
private:
    int id;
    bool isPrivileged;
    bool targetToCity;
    int length;

public:
    Vehicle(int id);
    int getId();
    bool getIsPrivileged();
    bool getTargetToCity();
    int getLength();
};


#endif //SO2_P_VEHICLE_H
