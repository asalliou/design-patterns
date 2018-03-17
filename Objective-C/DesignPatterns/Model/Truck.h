//
//  Truck.h
//  DesignPatterns
//
//  Created by Antoine SALLIOU on 08/03/2018.
//  Copyright © 2018 ViaMichelin. All rights reserved.
//

#import "Vehicle.h"

@interface Truck : Vehicle

@property (nonatomic, assign, readonly) BOOL hasTrailer;

- (instancetype)initWithBrand:(NSString *)brand
                        model:(NSString *)model
                        color:(NSString *)color
                   hasTrailer:(BOOL)hasTrailer;

@end
