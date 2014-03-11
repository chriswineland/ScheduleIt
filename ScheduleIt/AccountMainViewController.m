//
//  AccountMainViewController.m
//  ScheduleIt
//
//  Created by Chris Wineland on 3/7/14.
//  Copyright (c) 2014 Chris Wineland. All rights reserved.
//

#import "AccountMainViewController.h"
#import "AccountMainTableViewCell.h"
#import "AccountMainTabelViewCellData.h"

@interface AccountMainViewController ()

@end

@implementation AccountMainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [[self navigationItem]setTitle:@"Account"];
    
    [self setUpTableData];
    
    siTableView = [[SIGroupedTableView alloc]initWithFrame:CGRectMake(0, 0, screenWidth, screenHeight)];
    [siTableView setDelegate:self];
    [siTableView setDataSource:self];
    [[self view]addSubview:siTableView];
}

#pragma mark - table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
}

#pragma mark - table view data source

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *MyIdentifier = @"MyIdentifier";
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:MyIdentifier];
    if (cell == nil) {
        cell = [[AccountMainTableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:MyIdentifier];
    }
    
    return cell;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if(section == 0){
        return [self calculateRowsForZerothSection];
    } else if(section == 1){
        return [self calculateRowsForFirstSection];
    }
    return 0;
}

#pragma mark - helper functions

- (void)setUpTableData{
    if(tableData == nil){
        tableData = [[NSMutableArray alloc]initWithCapacity:0];
    } else {
        [tableData removeAllObjects];
    }
    [tableData addObject:[NSNumber numberWithInt:kProfileAndSettingsCell]];
    [tableData addObject:[NSNumber numberWithInt:kProfileCalendarCell]];
    if(profileCalendarCellExpanded){
        
    }
    [tableData addObject:[NSNumber numberWithInt:kSearchServiceCell]];
    if(searchServicesCellExpanded){
        
    }
    [tableData addObject:[NSNumber numberWithInt:kProvideServiceCell]];
    if(profileCalendarCellExpanded){
        
    }
}

-(NSInteger)calculateRowsForZerothSection{
    NSInteger rowCount = 2;
    for(NSNumber *num in tableData){
        if([num integerValue] == kProvideServiceExpandedCell){
            rowCount++;
        }
    }
    return rowCount;
}

-(NSInteger)calculateRowsForFirstSection{
    NSInteger rowCount = 2;
    for(NSNumber *num in tableData){
        if([num integerValue] == kSearchServiceExpandedCell || [num integerValue] == kProvideServiceExpandedCell){
            rowCount++;
        }
    }
    return rowCount;
}

@end