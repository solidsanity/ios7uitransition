//
//  CustomUITabBarViewController.h
//  UITransition
//
//  Created by Phillip Olexa on 11/8/13.
//  Copyright (c) 2013 CapTech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomUITabBarViewController : UITabBarController

// I created two styles to switch between
#define DefaultStyle @"default"
#define SecondaryStyle @"secondary"

// Public method to change the styling of the tab bar
- (void)changeTabLayout:(NSString *)style;

@end
