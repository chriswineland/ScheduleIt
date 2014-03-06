//
//  SILabelTextBlock.m
//  ScheduleIt
//
//  Created by Chris Wineland on 3/3/14.
//  Copyright (c) 2014 Chris Wineland. All rights reserved.
//

#import "SILabelTextBlock.h"

#define headerLabelFontType    [UIFont fontWithName:@"HelveticaNeue-Bold" size:14]

@implementation SILabelTextBlock

- (id)init{
    return [self initWithFrame:CGRectMake(0, 0, 0, 0)];
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setBackgroundColor:[UIColor clearColor]];
        [self setFont:headerLabelFontType];
        [self setTextColor:[UIColor blackColor]];
        [self setNumberOfLines:0];
        [self setTextAlignment:NSTextAlignmentLeft];
    }
    return self;
}

@end
