//
//  TruckBuilder.m
//  DesignPatterns
//
//  Created by Antoine SALLIOU on 06/03/2018.
//  Copyright © 2018 ViaMichelin. All rights reserved.
//

#import "TruckBuilder.h"

@interface TruckBuilder ()

@property (nonatomic, strong) NSString *brand;
@property (nonatomic, strong) NSString *model;
@property (nonatomic, strong) NSString *color;
@property (nonatomic, assign) BOOL hasTrailer;

@end

@implementation TruckBuilder

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

- (instancetype)hasTrailer:(BOOL)hasTrailer;
{
    _hasTrailer = hasTrailer;
    return self;
}

- (Truck *)build {
    return [[Truck alloc] initWithBrand:self.brand
                                  model:self.model
                                  color:self.color
                             hasTrailer:self.hasTrailer];
}

@end
