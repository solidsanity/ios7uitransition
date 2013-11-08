//
//  CustomUITabBarViewController.m
//  UITransition
//
//  Created by Phillip Olexa on 11/8/13.
//  Copyright (c) 2013 CapTech. All rights reserved.
//

#import "CustomUITabBarViewController.h"

@interface CustomUITabBarViewController ()

@end

@implementation CustomUITabBarViewController

- (void)changeTabLayout:(NSString *)style {
    if([style isEqualToString:SecondaryStyle]) {
        // Stylize tab bar using spacing and width
        // Also turn off translucency and make it black
        self.tabBar.itemPositioning = UITabBarItemPositioningCentered;
        self.tabBar.itemSpacing = 50.0;
        self.tabBar.itemWidth = 50.0;
        self.tabBar.barStyle = UIBarStyleBlack;
        self.tabBar.translucent = NO;
    } else {
        // Reset to default style
        self.tabBar.itemPositioning = UITabBarItemPositioningAutomatic;
        self.tabBar.barStyle = UIBarStyleDefault;
        self.tabBar.translucent = YES;
    }
}

@end
