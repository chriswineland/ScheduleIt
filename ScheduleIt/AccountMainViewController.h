//
//  AccountMainViewController.h
//  ScheduleIt
//
//  Created by Chris Wineland on 3/7/14.
//  Copyright (c) 2014 Chris Wineland. All rights reserved.
//

#import "BackgroundViewController.h"
#import "SIGroupedTableView.h"
#import "AccountMainTableViewDataSource.h"

@interface AccountMainViewController : BackgroundViewController<UITableViewDelegate>{
    SIGroupedTableView* siTableView;
    AccountMainTableViewDataSource* tableViewDataSourse;
}

@end
