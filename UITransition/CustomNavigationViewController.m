//
//  CustomNavigationViewController.m
//  UITransition
//
//  Created by Phillip Olexa on 11/8/13.
//  Copyright (c) 2013 CapTech. All rights reserved.
//

#import "CustomNavigationViewController.h"

@interface CustomNavigationViewController ()

@end

@implementation CustomNavigationViewController

-(UIStatusBarStyle)preferredStatusBarStyle{
    // This is the root view controller so we can implement this here
    // We will adjust the style base on the property we set in the other controllers
    if([self.statusBarStyle isEqualToString:LightStatusBar]) {
        return UIStatusBarStyleLightContent;
    }
    
    return UIStatusBarStyleDefault;
}

@end
