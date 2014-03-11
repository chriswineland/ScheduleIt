//
//  AccountMainTableViewCell.m
//  ScheduleIt
//
//  Created by Chris Wineland on 3/7/14.
//  Copyright (c) 2014 Chris Wineland. All rights reserved.
//

#import "AccountMainTableViewCell.h"
#import "Constants.h"

#define cellImageFrame CGRectMake(11,11,23,23)

typedef enum{
    kProfileSection = 0,
    kServicesSection
}kaccountsTableViewSections;

@implementation AccountMainTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        cellImage = [[UIImageView alloc]init];
        [cellImage setBackgroundColor:[UIColor orangeColor]];
        [cellImage setFrame:cellImageFrame];
        [[self contentView]addSubview:cellImage];
        
        cellTitleText = [[UITextView alloc]initWithFrame:CGRectMake(55, 7, 250, 30)];
        [cellTitleText setUserInteractionEnabled:NO];
        [cellTitleText setFont:regular18FontType];
        [cellTitleText setBackgroundColor:[UIColor clearColor]];
        [cellTitleText setTextAlignment:NSTextAlignmentLeft];
        [[self contentView]addSubview:cellTitleText];
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
}

#pragma mark - helper methods
- (void)setUpProfileAndSettingsCell{
    
}

- (void)setUpCurrentCalendarCell{
    
}

- (void)setUpProvideServiceCell{
    
}

- (void)setUpSearchServiceCell{
    
}

@end
