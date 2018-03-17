//
//  VehicleFactoryTests.m
//  DesignPatternsTests
//
//  Created by Antoine SALLIOU on 17/03/2018.
//  Copyright © 2018 ViaMichelin. All rights reserved.
//

@import XCTest;

#import "VehicleFactory.h"

#import "Car.h"
#import "Truck.h"

@interface VehicleFactoryTests : XCTestCase

@end

@implementation VehicleFactoryTests

- (void)testMakeCar {
    Vehicle *vehicle = [[VehicleFactory new] makeVehicleOfType:VehicleTypeCar];
    
    XCTAssertTrue([vehicle isKindOfClass:[Car class]]);
}

- (void)testMakeTruck {
    Vehicle *vehicle = [[VehicleFactory new] makeVehicleOfType:VehicleTypeTruck];
    
    XCTAssertTrue([vehicle isKindOfClass:[Truck class]]);
}

@end
