//
//  SIScrollView.m
//  ScheduleIt
//
//  Created by Chris Wineland on 3/3/14.
//  Copyright (c) 2014 Chris Wineland. All rights reserved.
//

#import "SIScrollView.h"

@implementation SIScrollView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setScrollEnabled:YES];
        [self setBounces:YES];
        [self setAlwaysBounceVertical:YES];
        [self setDelaysContentTouches:NO];
        [self setBackgroundColor:[UIColor clearColor]];
    }
    return self;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    for(UIView* view in [self subviews]){
        if([view isFirstResponder]){
            [view resignFirstResponder];
        }
    }
}

@end
