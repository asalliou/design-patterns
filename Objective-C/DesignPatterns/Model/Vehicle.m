//
//  Vehicle.m
//  DesignPatterns
//
//  Created by Antoine SALLIOU on 08/03/2018.
//  Copyright © 2018 ViaMichelin. All rights reserved.
//

#import "Vehicle.h"

@implementation Vehicle

- (instancetype)initWithBrand:(NSString *)brand
                        model:(NSString *)model
                        color:(NSString *)color
{
    self = [super init];
    if (self) {
        _brand = brand;
        _model = model;
        _color = color;
    }
    return self;
}

- (NSString *)description {
    return [[NSString alloc] initWithFormat:@"%@ %@ %@", self.brand, self.model, self.color];
}

@end
