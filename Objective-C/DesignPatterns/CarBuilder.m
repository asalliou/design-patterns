//
//  CarBuilder.m
//  DesignPatterns
//
//  Created by Antoine SALLIOU on 06/03/2018.
//  Copyright © 2018 ViaMichelin. All rights reserved.
//

#import "CarBuilder.h"

@interface CarBuilder ()

@property (nonatomic, strong) NSString *brand;
@property (nonatomic, strong) NSString *model;
@property (nonatomic, strong) NSString *color;

@end

@implementation CarBuilder

- (instancetype)brand:(NSString *)brand {
    _brand = brand;
    return self;
}

- (instancetype)model:(NSString *)model {
    _model = model;
    return self;
}

- (instancetype)color:(NSString *)color {
    _color = color;
    return self;
}

- (Car *)build {
    return [[Car alloc] initWithBrand:self.brand
                                model:self.model
                                color:self.color];
}

@end
