//
//  AccountMainTableViewDataSource
//  ScheduleIt
//
//  Created by Chris Wineland on 3/11/14.
//  Copyright (c) 2014 Chris Wineland. All rights reserved.
//

#import "AccountMainTableViewDataSource.h"
#import "AccountMainTabelViewCellData.h"

@implementation AccountMainTableViewDataSource{
    
}

- (id)init{
    self = [super init];
    if(self){
        profileTableViewCells = [[NSMutableArray alloc]initWithCapacity:0];
        serviceTableViewCells = [[NSMutableArray alloc]initWithCapacity:0];

        profileCalendarCellExpanded = NO;
        searchServiceCellExpanded = NO;
        provideServiceCellExpanded = NO;
    }
    return self;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 2;
    if(section == 0){
        return [profileTableViewCells count];
    } else if(section == 1){
        return [serviceTableViewCells count];
    }
    return 0;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}


- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *MyIdentifier = @"MyIdentifier";
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:MyIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:MyIdentifier];
    }
    
    return cell;
}

#pragma mark - helper functions
- (void)createProfileTableViewCells{
    
}

- (void)createServiceTableViewCells{
    
}

#pragma mark - accessor functions

- (void)setProfileCalendarCellExpanded:(BOOL)value{
    if(profileCalendarCellExpanded == value) return;
    profileCalendarCellExpanded = value;
    [self createProfileTableViewCells];
    //tell lesteners that the data source has changed
}

- (void)setSearchServiceCellExpanded:(BOOL)value{
    if(searchServiceCellExpanded == value) return;
    searchServiceCellExpanded = value;
    [self createServiceTableViewCells];
    //tell lesteners that the data source has changed
}

- (void)setProvideServiceCellExpanded:(BOOL)value{
    if(provideServiceCellExpanded == value) return;
    provideServiceCellExpanded = value;
    [self createServiceTableViewCells];
    //tell lesteners taht the data source has changed
}

@end
