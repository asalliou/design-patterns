//
//  Car.h
//  DesignPatterns
//
//  Created by Antoine SALLIOU on 06/03/2018.
//  Copyright © 2018 ViaMichelin. All rights reserved.
//

@import Foundation;
@import UIKit;

@interface Car : NSObject

@property (nonatomic, strong, readonly) NSString *brand;
@property (nonatomic, strong, readonly) NSString *model;
@property (nonatomic, strong, readonly) NSString *color;

- (instancetype)initWithBrand:(NSString *)brand
                        model:(NSString *)model
                        color:(NSString *)color;

@end
