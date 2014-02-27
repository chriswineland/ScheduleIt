//
//  CWFlatButton.m
//  CWFlatButton
//
//  Created by Chris Wineland on 2/13/14.
//  Copyright (c) 2014 Chris Wineland. All rights reserved.
//

#import "CWFlatButton.h"

@implementation CWFlatButton

#pragma mark - init

- (id)init{
    self = [self initWithFrame:CGRectMake(0, 0, 0, 0)];
    return self;
}

- (id)initWithFrame:(CGRect)frame{
    self = [self initWithFrame:frame andText:@""];
    return self;
}

- (id)initWithFrame:(CGRect)frame andText:(NSString *)text{
    if(self = [super initWithFrame:frame]){
        //set the text labels frame here as well
        self.textLable = [[UILabel alloc]initWithFrame:frame];
        [self.textLable setBackgroundColor:[UIColor clearColor]];
        [self.textLable setText:text];
        [self addSubview:self.textLable];
    }
    return self;
}

#pragma mark - lable accessors

- (void)setText:(NSString*)text{
    [self.textLable setText:text];
}

- (void)setFont:(UIFont*)font{
    [self.textLable setFont:font];
}

- (void)setNumberOfLines:(NSInteger)lines{
    [self.textLable setNumberOfLines:lines];
}

- (void)setVerticalTextAlignment:(kVerticalAlignment)vAlignment{
    switch (vAlignment) {
        case kTopVerticalAligned:
        {
        
        }
            break;
        case kCenterVerticalAligned:
        {
            
        }
            break;
        case kBottomVerticalAligned:
        {
            
        }
            break;
        default:
            break;
    }
}

- (void)setHorizontalTextAlignment:(kHorizontalAlignment)hAlignment{
    switch (hAlignment) {
        case kLeftHorizontalAligned:
        {
            
        }
            break;
        case kCenterHorizontalAligned:
        {
            
        }
            break;
        case kRightHorizontalAligned:
        {
            
        }
            break;
        default:
            break;
    }
}

#pragma mark - button accessors

- (void)setFrame:(CGRect)frame{
    
}

- (void)setFontColor:(UIColor*)color forState:(kCWButtonState)state{
    switch (state) {
        case kCWButtonStateNormal:
        {
            
        }
            break;
        case kCWButtonStatePressed:
        {
            
        }
            break;
        default:
            break;
    }
}

- (void)setButtonColor:(UIColor*)color forState:(kCWButtonState)state{
    switch (state) {
        case kCWButtonStateNormal:
        {
            
        }
            break;
        case kCWButtonStatePressed:
        {
            
        }
            break;
        default:
            break;
    }
}

#pragma mark - button action functions

#pragma mark - button delegates

@end
