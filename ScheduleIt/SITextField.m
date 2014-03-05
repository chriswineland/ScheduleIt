//
//  SITextField.m
//  ScheduleIt
//
//  Created by Chris Wineland on 3/3/14.
//  Copyright (c) 2014 Chris Wineland. All rights reserved.
//

#import "SITextField.h"
#import "Constants.h"

#define placeHolderTextColor

@implementation SITextField

- (id)init{
    return [self initWithFrame:CGRectMake(0, 0, 0, 0)];
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setBorderStyle:UITextBorderStyleBezel];
        [self setAutocorrectionType:UITextAutocorrectionTypeNo];
        [self setSpellCheckingType:UITextSpellCheckingTypeNo];
    }
    return self;
}

- (void)drawPlaceholderInRect:(CGRect)rect{
    [[self placeholder]drawInRect:rect withAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:16],
                                                        NSForegroundColorAttributeName: RGB(102, 102, 102)}];
}

@end
