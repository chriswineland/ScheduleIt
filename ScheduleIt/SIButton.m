//
//  SIButton.m
//  ScheduleIt
//
//  Created by Chris Wineland on 3/3/14.
//  Copyright (c) 2014 Chris Wineland. All rights reserved.
//

#import "SIButton.h"

#define button_type_posative_button_color   [UIColor blueColor]
#define button_type_negateve_button_color   [UIColor darkGrayColor]
#define button_state_normal_text_color      [UIColor whiteColor]
#define button_state_highlighted_text_color [UIColor blackColor]

#define button_font_type                    [UIFont boldSystemFontOfSize:16]

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
        
        [self setTitleColor:button_state_normal_text_color forState:UIControlStateNormal];
        [self setTitleColor:button_state_highlighted_text_color forState:UIControlStateHighlighted];
        [[self titleLabel]setFont:button_font_type];
        [self addTarget:self action:@selector(buttonPress:) forControlEvents:UIControlEventTouchUpInside];
        
        switch (self.butType) {
            case kSIButtonTypePosative:
            {
                [self setBackgroundColor:button_type_posative_button_color];
            }
                break;
            case kSIButtonTypeNegative:
            {
                [self setBackgroundColor:button_type_negateve_button_color];
            }
                break;
            default:
            {
                [self setBackgroundColor:button_type_posative_button_color];
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
