//
//  TruckBuilderTests.m
//  DesignPatternsTests
//
//  Created by Antoine SALLIOU on 06/03/2018.
//  Copyright © 2018 ViaMichelin. All rights reserved.
//

@import Foundation;
@import XCTest;

#import "TruckBuilder.h"

@interface TruckBuilderTests : XCTestCase

@end

@implementation TruckBuilderTests

- (void)testBuildTruck
{
    NSString *expectedBrand = @"Tesla";
    NSString *expectedModel = @"Model s";
    NSString *expectedColor = @"Red";
    BOOL hasTrailer = YES;
    
    TruckBuilder *builder = [TruckBuilder new];
    Truck *truck = [[[[[builder brand:expectedBrand] model:expectedModel] color:expectedColor] hasTrailer:hasTrailer] build];
    
    XCTAssertEqualObjects(expectedBrand, truck.brand);
    XCTAssertEqualObjects(expectedModel, truck.model);
    XCTAssertEqualObjects(expectedColor, truck.color);
    XCTAssertTrue(truck.hasTrailer);
}

@end
