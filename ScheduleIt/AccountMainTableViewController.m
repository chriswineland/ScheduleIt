//
//  AccountMainTableViewController.m
//  ScheduleIt
//
//  Created by Chris Wineland on 3/11/14.
//  Copyright (c) 2014 Chris Wineland. All rights reserved.
//

#import "AccountMainTableViewController.h"
#import "AccountMainTabelViewCellData.h"

@implementation AccountMainTableViewController{
    
}

- (id)init{
    self = [super init];
    if(self){
        profileSettingsCells = [[NSMutableArray alloc]initWithCapacity:0];
        profileCalendarCells = [[NSMutableArray alloc]initWithCapacity:0];
        searchServiceCells = [[NSMutableArray alloc]initWithCapacity:0];
        provideServiceCells = [[NSMutableArray alloc]initWithCapacity:0];
        profileCalendarCellExpanded = NO;
        searchServiceCellExpanded = NO;
        provideServiceCellExpanded = NO;
    }
    return self;
}

- (NSInteger)numberOfSectionsInTableView{
    return 2;
}
- (NSInteger)NumberOfRowsInSection:(NSInteger)section{
    if(section == 0){
        return [profileCalendarCells count] + [profileSettingsCells count];
    } else if(section == 1){
        return [searchServiceCells count] + [provideServiceCells count];
    }
    return 0;
}

@end
