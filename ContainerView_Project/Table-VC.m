//
//  Table-VC.m
//  ContainerView_Project
//
//  Created by Uber on 23/04/2017.
//  Copyright © 2017 Uber. All rights reserved.
//

#import "Table-VC.h"

@interface Table_VC ()
@property (nonatomic, strong) NSArray* array;
@end

@implementation Table_VC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.array = @[@"1",@"2",@"3",@"4",@"5"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.array.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    // Set the data for this cell:
    cell.textLabel.text = [self.array objectAtIndex:indexPath.row];
    cell.detailTextLabel.text = @"More text";
    
    // set the accessory view:
    cell.accessoryType =  UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}



@end
