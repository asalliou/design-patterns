//
//  Car.h
//  DesignPatterns
//
//  Created by Antoine SALLIOU on 06/03/2018.
//  Copyright © 2018 ViaMichelin. All rights reserved.
//

#import "Vehicle.h"

@interface Car : Vehicle

@property (nonatomic, strong, readonly) NSString *category;

- (instancetype)initWithBrand:(NSString *)brand
                        model:(NSString *)model
                        color:(NSString *)color
                     category:(NSString *)category;

@end
