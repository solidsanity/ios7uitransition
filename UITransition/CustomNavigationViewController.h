//
//  CustomNavigationViewController.h
//  UITransition
//
//  Created by Phillip Olexa on 11/8/13.
//  Copyright (c) 2013 CapTech. All rights reserved.
//

#import <UIKit/UIKit.h>

#define DefaultStatusBar @"UIStatusBarStyleDefault"
#define LightStatusBar @"UIStatusBarStyleLightContent"

@interface CustomNavigationViewController : UINavigationController

@property (nonatomic, strong) NSString *statusBarStyle;

@end
