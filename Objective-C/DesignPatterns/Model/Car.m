//
//  Car.m
//  DesignPatterns
//
//  Created by Antoine SALLIOU on 06/03/2018.
//  Copyright © 2018 ViaMichelin. All rights reserved.
//

#import "Car.h"

@implementation Car

- (instancetype)initWithBrand:(NSString *)brand
                        model:(NSString *)model
                        color:(NSString *)color
                     category:(NSString *)category
{
    self = [super initWithBrand:brand
                          model:model
                          color:color];
    if (self) {
        _category = category;
    }
    return self;
}

- (NSString *)description {
    return [[super description] stringByAppendingString:[[NSString alloc] initWithFormat:@" %@", self.category]];
}

@end
