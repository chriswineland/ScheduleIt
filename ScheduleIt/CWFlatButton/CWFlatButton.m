//
//  CWFlatButton.m
//  CWFlatButton
//
//  Created by Chris Wineland on 2/13/14.
//  Copyright (c) 2014 Chris Wineland. All rights reserved.
//

#import "CWFlatButton.h"

@implementation CWFlatButton

#pragma mark - defines

#define BUTTON_STATE_NORMAL_COLOR   [UIColor colorWithRed:0 green:0 blue:0 alpha:0]
#define BUTTON_STATE_PRESSED_COLOR  [UIColor colorWithRed:0 green:0 blue:0 alpha:0]
#define TEXT_STATE_NORMAL_COLOR     [UIColor colorWithRed:0 green:0 blue:0 alpha:0]
#define TEXT_STATE_PRESSED_COLOR    [UIColor colorWithRed:0 green:0 blue:0 alpha:0]
#define BORDER_STATE_NORMAL_COLOR   [UIColor colorWithRed:0 green:0 blue:0 alpha:0]
#define BORDER_STATE_PRESSED_COLOR  [UIColor colorWithRed:0 green:0 blue:0 alpha:0]

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
        [self setUserInteractionEnabled:YES];
        
        textLable = [[UILabel alloc]initWithFrame:frame];
        [textLable setBackgroundColor:[UIColor clearColor]];
        [textLable setText:text];
        [self addSubview:textLable];
        
        [self initializeDefaultButtonColors];
    }
    return self;
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

- (void)setBorderColor:(UIColor*)color forState:(kCWButtonState)state{
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

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    //check to make sure the touch is inside the button
}

#pragma mark - button delegates

#pragma mark - helper functions

- (void)initializeDefaultButtonColors{
    self.buttonStateNormalColor = BUTTON_STATE_NORMAL_COLOR;
    self.buttonStatePressedColor = BUTTON_STATE_PRESSED_COLOR;
    self.textStateNormalColor = TEXT_STATE_NORMAL_COLOR;
    self.textStatePressedColor = TEXT_STATE_PRESSED_COLOR;
    self.borderStateNormalColor = BORDER_STATE_NORMAL_COLOR;
    self.borderStatePressedColor = BORDER_STATE_PRESSED_COLOR;
}

@end












