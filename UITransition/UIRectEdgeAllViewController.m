//
//  UIRectEdgeAllViewController.m
//  UITransition
//
//  Created by Phillip Olexa on 11/8/13.
//  Copyright (c) 2013 CapTech. All rights reserved.
//

#import "UIRectEdgeAllViewController.h"

@interface UIRectEdgeAllViewController ()

@end

@implementation UIRectEdgeAllViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	
    // Extend view edges to fullness of screen
    self.edgesForExtendedLayout = UIRectEdgeAll;
    self.extendedLayoutIncludesOpaqueBars = NO;
}

@end
