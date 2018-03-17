//
//  CarBuilderTests.m
//  DesignPatternsTests
//
//  Created by Antoine SALLIOU on 06/03/2018.
//  Copyright © 2018 ViaMichelin. All rights reserved.
//

@import Foundation;
@import XCTest;

#import "CarBuilder.h"

@interface CarBuilderTests : XCTestCase

@end

@implementation CarBuilderTests

- (void)testBuildCar
{
    NSString *expectedBrand = @"Tesla";
    NSString *expectedModel = @"Model s";
    NSString *expectedColor = @"Red";
    NSString *expectedCategory = @"Sedan";
    
    CarBuilder *builder = [CarBuilder new];
    Car *car = [[[[[builder brand:expectedBrand] model:expectedModel] color:expectedColor] category:expectedCategory] build];
    
    XCTAssertEqualObjects(expectedBrand, car.brand);
    XCTAssertEqualObjects(expectedModel, car.model);
    XCTAssertEqualObjects(expectedColor, car.color);
    XCTAssertEqualObjects(expectedCategory, car.category);
}

@end
