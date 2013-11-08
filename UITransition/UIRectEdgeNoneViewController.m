//
//  UIRectEdgeNoneViewController.m
//  UITransition
//
//  Created by Phillip Olexa on 11/8/13.
//  Copyright (c) 2013 CapTech. All rights reserved.
//

#import "UIRectEdgeNoneViewController.h"
#import "CustomNavigationViewController.h"

@interface UIRectEdgeNoneViewController ()

@end

@implementation UIRectEdgeNoneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	
    // iOS 6 style view edges (everything below nav/status bar)
    self.edgesForExtendedLayout = UIRectEdgeNone;
    self.extendedLayoutIncludesOpaqueBars = YES;
}

@end
