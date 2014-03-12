//
//  AccountMainViewController.m
//  ScheduleIt
//
//  Created by Chris Wineland on 3/7/14.
//  Copyright (c) 2014 Chris Wineland. All rights reserved.
//

#import "AccountMainViewController.h"


@interface AccountMainViewController ()

@end

@implementation AccountMainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [[self navigationItem]setTitle:@"Account"];
    
    siTableView = [[SIGroupedTableView alloc]initWithFrame:CGRectMake(0, 0, screenWidth, screenHeight)];
    [siTableView setDelegate:self];
    tableViewDataSourse = [[AccountMainTableViewDataSource alloc]init];
    [siTableView setDataSource:tableViewDataSourse];
    [[self view]addSubview:siTableView];
}

#pragma mark - table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
}

#pragma mark - table view data source


#pragma mark - helper functions

@end