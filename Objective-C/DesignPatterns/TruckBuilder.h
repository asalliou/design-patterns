//
//  TruckBuilder.h
//  DesignPatterns
//
//  Created by Antoine SALLIOU on 06/03/2018.
//  Copyright © 2018 ViaMichelin. All rights reserved.
//

@import Foundation;
@import UIKit;

#import "Truck.h"

@interface TruckBuilder : NSObject

- (instancetype)brand:(NSString *)brand;

- (instancetype)model:(NSString *)model;

- (instancetype)color:(NSString *)color;

- (instancetype)hasTrailer:(BOOL)hasTrailer;

- (Truck *)build;

@end
