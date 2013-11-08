//
//  UITableViewPerformanceViewController.m
//  UITransition
//
//  Created by Phillip Olexa on 11/8/13.
//  Copyright (c) 2013 CapTech. All rights reserved.
//

#import "UITableViewPerformanceViewController.h"

@interface UITableViewPerformanceViewController ()

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSMutableArray *numArray;

@end

@implementation UITableViewPerformanceViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.numArray = [[NSMutableArray alloc] init];
    for(int i=0; i<1000; i++) {
        [self.numArray addObject:[NSString stringWithFormat:@"%d", i]];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.numArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"Rendering");
    
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    cell.textLabel.text = [self.numArray objectAtIndex:indexPath.row];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"Height %d", indexPath.row);
    
    // Expensive code (creates a large array for no reason)
    // Just for testing the performance
    for(int i=0; i<10000; i++) {
        NSArray *array = [[NSArray alloc] init];
    }
    
    return 60;
}

// Comment out this method to see the loading time difference
- (CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath  {
    NSLog(@"Estimate %d", indexPath.row);
    
    return 60;
}


@end
