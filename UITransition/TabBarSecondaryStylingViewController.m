//
//  UIElements2ViewController.m
//  UITransition
//
//  Created by Phillip Olexa on 11/8/13.
//  Copyright (c) 2013 CapTech. All rights reserved.
//

#import "TabBarSecondaryStylingViewController.h"
#import "CustomUITabBarViewController.h"

@interface TabBarSecondaryStylingViewController ()

@end

@implementation TabBarSecondaryStylingViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    // Change tab bar to secondary styling
    CustomUITabBarViewController *tabBarController = (CustomUITabBarViewController *)self.tabBarController;
    [tabBarController changeTabLayout:SecondaryStyle];
}

@end
