//
//  SILabelHeader.m
//  ScheduleIt
//
//  Created by Chris Wineland on 3/3/14.
//  Copyright (c) 2014 Chris Wineland. All rights reserved.
//

#import "SILabelHeader.h"
#import "Constants.h"

#define headerLabelFontColor   RGB(51,51,51)

@implementation SILabelHeader

- (id)init{
    return [self initWithFrame:CGRectMake(0, 0, 0, 0)];
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setBackgroundColor:[UIColor clearColor]];
        [self setFont:bold16FontType];
        [self setTextColor:headerLabelFontColor];
        [self setNumberOfLines:0];
        [self setTextAlignment:NSTextAlignmentLeft];
    }
    return self;
}

@end
