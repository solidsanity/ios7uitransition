//
//  UIButtonsAndUIToolbarsViewController.m
//  UITransition
//
//  Created by Phillip Olexa on 11/8/13.
//  Copyright (c) 2013 CapTech. All rights reserved.
//

#import "UIButtonsAndUIToolbarsViewController.h"

@interface UIButtonsAndUIToolbarsViewController ()

@property (weak, nonatomic) IBOutlet UIButton *renderingModeOriginalButton;
@property (weak, nonatomic) IBOutlet UIButton *renderingModeTemplateButton;

@end

@implementation UIButtonsAndUIToolbarsViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // Use tint for image on button
    UIImage *templateImage = [[UIImage imageNamed:@"star.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    [self.renderingModeTemplateButton setBackgroundImage:templateImage forState:UIControlStateNormal];
    
    // Use original image for button
    UIImage *originalImage = [[UIImage imageNamed:@"star.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [self.renderingModeOriginalButton setBackgroundImage:originalImage forState:UIControlStateNormal];
}

@end
