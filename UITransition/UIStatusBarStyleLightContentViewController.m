//
//  UIStatusBarStyleLightContentViewController.m
//  UITransition
//
//  Created by Phillip Olexa on 11/8/13.
//  Copyright (c) 2013 CapTech. All rights reserved.
//

#import "UIStatusBarStyleLightContentViewController.h"
#import "CustomNavigationViewController.h"

@interface UIStatusBarStyleLightContentViewController ()

@end

@implementation UIStatusBarStyleLightContentViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewDidLoad];
    
    // Change it to a light tinted status bar
    CustomNavigationViewController *navController = (CustomNavigationViewController *)self.navigationController;
    navController.statusBarStyle = LightStatusBar;
    [navController setNeedsStatusBarAppearanceUpdate];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    
    // Reset back to default status bar
    CustomNavigationViewController *navController = (CustomNavigationViewController *)self.navigationController;
    navController.statusBarStyle = DefaultStatusBar;
    [navController setNeedsStatusBarAppearanceUpdate];
}

@end
