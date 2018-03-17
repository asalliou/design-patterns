//
//  ViewController.m
//  DesignPatterns
//
//  Created by Antoine SALLIOU on 06/03/2018.
//  Copyright © 2018 ViaMichelin. All rights reserved.
//

#import "ViewController.h"

#import "CarBuilder.h"
#import "TruckBuilder.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.translatesAutoresizingMaskIntoConstraints = NO;
    
    Car *car = [[[[[[CarBuilder new] brand:@"Ford"] model:@"Mustang"] color:@"Black"] category:@""] build];
    Truck *truck = [[[[[[TruckBuilder new] brand:@"Volvo"] model:@"FH"] color:@"Gray"] hasTrailer:NO] build];

    UIStackView *stackView = [self setupStackView];
    
    [self addVehicle:car toStackView:stackView];
    [self addVehicle:truck toStackView:stackView];
}

- (UIStackView *)setupStackView
{
    UIStackView *stackView = [[UIStackView alloc] init];
    stackView.translatesAutoresizingMaskIntoConstraints = NO;
    stackView.axis = UILayoutConstraintAxisVertical;
    [self.view addSubview:stackView];
    [stackView.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor].active = YES;
    [stackView.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor].active = YES;
    
    return stackView;
}

- (void)addVehicle:(Vehicle *)vehicle
       toStackView:(UIStackView *)stackView
{
    UILabel *label = [UILabel new];
    label.translatesAutoresizingMaskIntoConstraints = NO;
    label.text = vehicle.description;
    [stackView addArrangedSubview:label];
}

@end
