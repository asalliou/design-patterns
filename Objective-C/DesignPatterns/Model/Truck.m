//
//  Truck.m
//  DesignPatterns
//
//  Created by Antoine SALLIOU on 08/03/2018.
//  Copyright © 2018 ViaMichelin. All rights reserved.
//

#import "Truck.h"

@implementation Truck

- (instancetype)initWithBrand:(NSString *)brand
                        model:(NSString *)model
                        color:(NSString *)color
                   hasTrailer:(BOOL)hasTrailer
{
    self = [super initWithBrand:brand
                          model:model
                          color:color];
    if (self) {
        _hasTrailer = hasTrailer;
    }
    return self;
}

- (NSString *)description {
    return [[super description] stringByAppendingString:[[NSString alloc] initWithFormat:@" %@", self.hasTrailer ? @"Y" : @"N"]];
}

@end
