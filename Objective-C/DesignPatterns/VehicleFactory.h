//
//  VehicleFactory.h
//  DesignPatterns
//
//  Created by Antoine SALLIOU on 17/03/2018.
//  Copyright © 2018 ViaMichelin. All rights reserved.
//

@import Foundation;

#import "Vehicle.h"

typedef NS_ENUM(NSInteger, VehicleType) {
    VehicleTypeCar = 0,
    VehicleTypeTruck
};

@interface VehicleFactory : NSObject

- (Vehicle *)makeVehicleOfType:(VehicleType)vehicleType;

@end
