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
    
    SItableView = [[SIGroupedTableView alloc]initWithFrame:CGRectMake(0, 0, screenWidth, screenHeight)];
    [SItableView setDelegate:self];
    [SItableView setDataSource:self];
    [[self view]addSubview:SItableView];
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
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:MyIdentifier];
    }
    [[cell textLabel] setText:@"temp"];
    return cell;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 2;
}



@end
