//
//  UIPickerAndUIDatePickerViewController.m
//  UITransition
//
//  Created by Phillip Olexa on 11/8/13.
//  Copyright (c) 2013 CapTech. All rights reserved.
//

#import "UIPickerAndUIDatePickerViewController.h"

@interface UIPickerAndUIDatePickerViewController ()
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;
@property (weak, nonatomic) IBOutlet UIPickerView *picker;
@property (strong, nonatomic) NSArray *pickerViewArray;

@end

@implementation UIPickerAndUIDatePickerViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // Set the date picker to today's date
    [self.datePicker setDate:[NSDate date]];
    
    // Create some stuff to scroll
    self.pickerViewArray = [[NSArray alloc] initWithObjects:@"Option 1", @"Option 2", @"Option 3", @"Option 4", @"Option 5", nil];
}

#pragma mark Picker Delegate and Datasource Methods

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return [self.pickerViewArray count];
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return [self.pickerViewArray objectAtIndex:row];
}

@end
