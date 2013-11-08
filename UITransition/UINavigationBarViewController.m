//
//  UINavigationBarViewController.m
//  UITransition
//
//  Created by Phillip Olexa on 11/8/13.
//  Copyright (c) 2013 CapTech. All rights reserved.
//

#import "UINavigationBarViewController.h"
#import "CustomNavigationViewController.h"

@interface UINavigationBarViewController ()

@end

@implementation UINavigationBarViewController

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    // Set nav bar title color to white
    self.navigationController.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName : [UIColor whiteColor]};
    
    // Change the back button cheveron image
    self.navigationController.navigationBar.backIndicatorImage = [UIImage imageNamed:@"back.png"];
    self.navigationController.navigationBar.backIndicatorTransitionMaskImage = [UIImage imageNamed:@"back.png"];
	
    // Change nav bar styling
    self.navigationController.navigationBar.translucent = NO;
    self.navigationController.navigationBar.barTintColor = [UIColor blueColor];
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    self.extendedLayoutIncludesOpaqueBars = YES;
}

- (void) viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    
    // Set title color back to the default black
    self.navigationController.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName : [UIColor blackColor]};
    
    // Change back button to default
    self.navigationController.navigationBar.backIndicatorImage = nil;
    self.navigationController.navigationBar.backIndicatorTransitionMaskImage = nil;
    
    // Change nav bar styling back
    self.navigationController.navigationBar.translucent = YES;
    self.navigationController.navigationBar.barTintColor = nil;
    self.navigationController.navigationBar.tintColor = nil;
    self.extendedLayoutIncludesOpaqueBars = NO;
}

@end
