//
//  VehicleFactory.m
//  DesignPatterns
//
//  Created by Antoine SALLIOU on 17/03/2018.
//  Copyright © 2018 ViaMichelin. All rights reserved.
//

#import "VehicleFactory.h"

#import "CarBuilder.h"
#import "TruckBuilder.h"

@implementation VehicleFactory

- (Vehicle *)makeVehicleOfType:(VehicleType)vehicleType
{
    switch (vehicleType) {
        default:
        case VehicleTypeCar:
            return [[[[[[CarBuilder new] brand:@"Ford"] model:@"Mustang"] color:@"Black"] category:@"Coupe"] build];;
            break;
            
        case VehicleTypeTruck:
            return [[[[[[TruckBuilder new] brand:@"Volvo"] model:@"FH"] color:@"Gray"] hasTrailer:NO] build];
            break;
    }
}
@end
