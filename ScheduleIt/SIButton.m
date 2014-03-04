//
//  SIButton.m
//  ScheduleIt
//
//  Created by Chris Wineland on 3/3/14.
//  Copyright (c) 2014 Chris Wineland. All rights reserved.
//

#import "SIButton.h"
#import "Constants.h"

#define button_font_type    [UIFont boldSystemFontOfSize:16]

@implementation SIButton

@synthesize delegate, butType;

- (id)init{
    return [self initWithFrame:CGRectMake(0, 0, 0, 0)];
}

- (id)initWithFrame:(CGRect)frame
{
    return [self initWithFrame:frame andButtonType:kSIButtonTypePosative];
}

- (id)initWithFrame:(CGRect)frame andButtonType:(SIButtonType)type{
    self = [super initWithFrame:frame];
    if (self) {
        [self setButType:type];
        
        [self setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [self setTitleColor:complementColor1 forState:UIControlStateHighlighted];
        [[self titleLabel]setFont:button_font_type];
        [self addTarget:self action:@selector(buttonPress:) forControlEvents:UIControlEventTouchUpInside];
        
        switch (self.butType) {
            case kSIButtonTypePosative:
            {
                [self setBackgroundColor:primaryColor1];
            }
                break;
            case kSIButtonTypeNegative:
            {
                [self setBackgroundColor:primaryColor3];
            }
                break;
            default:
            {
                [self setBackgroundColor:primaryColor1];
            }
                break;
        }
    }
    
    return self;
}

#pragma mark - helper functions

- (void)setTitle:(NSString*)title{
    [self setTitle:title forState:UIControlStateNormal];
    [self setTitle:title forState:UIControlStateHighlighted];
}

- (void)buttonPress:(id)sender{
    [delegate siButtonWasPressed:self];
}

@end
