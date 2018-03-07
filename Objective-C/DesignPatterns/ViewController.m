//
//  ViewController.m
//  DesignPatterns
//
//  Created by Antoine SALLIOU on 06/03/2018.
//  Copyright © 2018 ViaMichelin. All rights reserved.
//

#import "ViewController.h"

#import "CarBuilder.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.translatesAutoresizingMaskIntoConstraints = NO;

    UILabel *label = [UILabel new];
    label.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:label];
    
    [label.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor].active = YES;
    [label.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor].active = YES;

    Car *car = [[[[[CarBuilder new] brand:@"Ford"] model:@"Mustang"] color:@"Black"] build];
    
    label.text = car.description;
}

@end
