//
//  AccountMainTableViewController.h
//  ScheduleIt
//
//  Created by Chris Wineland on 3/11/14.
//  Copyright (c) 2014 Chris Wineland. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AccountMainTableViewController : NSObject{
    NSMutableArray* profileSettingsCells;
    NSMutableArray* profileCalendarCells;
    NSMutableArray* searchServiceCells;
    NSMutableArray* provideServiceCells;
    
    BOOL profileCalendarCellExpanded;
    BOOL searchServiceCellExpanded;
    BOOL provideServiceCellExpanded;
}

- (NSInteger)numberOfSectionsInTableView;
- (NSInteger)NumberOfRowsInSection:(NSInteger)section;

@end
