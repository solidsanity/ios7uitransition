//
//  UIElements1ViewController.m
//  UITransition
//
//  Created by Phillip Olexa on 11/8/13.
//  Copyright (c) 2013 CapTech. All rights reserved.
//

#import "TabBarDefaultStylingViewController.h"
#import "CustomUITabBarViewController.h"

@interface TabBarDefaultStylingViewController ()

@end

@implementation TabBarDefaultStylingViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    // Change tab bar to default styling
    CustomUITabBarViewController *tabBarController = (CustomUITabBarViewController *)self.tabBarController;
    [tabBarController changeTabLayout:DefaultStyle];
}

@end
