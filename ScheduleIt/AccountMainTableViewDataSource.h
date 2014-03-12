//
//  AccountMainTableViewDataSource
//  ScheduleIt
//
//  Created by Chris Wineland on 3/11/14.
//  Copyright (c) 2014 Chris Wineland. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AccountMainTableViewDataSource : NSObject<UITableViewDataSource>{
    NSMutableArray* profileTableViewCells;
    NSMutableArray* serviceTableViewCells;
    
    BOOL profileCalendarCellExpanded;
    BOOL searchServiceCellExpanded;
    BOOL provideServiceCellExpanded;
}

- (void)setProfileCalendarCellExpanded:(BOOL)value;

@end
