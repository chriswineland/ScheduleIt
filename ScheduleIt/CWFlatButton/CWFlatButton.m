//
//  CWFlatButton.m
//  CWFlatButton
//
//  Created by Chris Wineland on 2/13/14.
//  Copyright (c) 2014 Chris Wineland. All rights reserved.
//

#import "CWFlatButton.h"

@implementation CWFlatButton

@synthesize delegate;

#pragma mark - defines

#define BUTTON_STATE_NORMAL_COLOR   [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0]
#define BUTTON_STATE_PRESSED_COLOR  [UIColor colorWithRed:0 green:0 blue:0 alpha:0]
#define TEXT_STATE_NORMAL_COLOR     [UIColor colorWithRed:0 green:0 blue:0 alpha:0]
#define TEXT_STATE_PRESSED_COLOR    [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0]
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
        [textLable setTextAlignment:NSTextAlignmentCenter];
        [textLable setNumberOfLines:0];
        [textLable setText:text];
        [textLable sizeToFit];
        [textLable setCenter:[self center]];
        [self addSubview:textLable];
        
        [self initializeDefaultButtonColors];
    }
    return self;
}

#pragma mark - button accessors

- (void)setFrame:(CGRect)frame{
    [super setFrame:frame];
    [textLable setCenter:[self center]];
    [self drawBoarderWithColor:self.borderStateNormalColor];
}

- (void)setFontColor:(UIColor*)color forState:(kCWButtonState)state{
    switch (state) {
        case kCWButtonStateNormal:
        {
            self.textStateNormalColor = color;
        }
            break;
        case kCWButtonStatePressed:
        {
            self.textStatePressedColor = color;
        }
            break;
        default:
        {
            self.textStateNormalColor = TEXT_STATE_NORMAL_COLOR;
            self.textStatePressedColor = TEXT_STATE_PRESSED_COLOR;
        }
            break;
    }
}

- (void)setButtonColor:(UIColor*)color forState:(kCWButtonState)state{
    switch (state) {
        case kCWButtonStateNormal:
        {
            self.buttonStateNormalColor = color;
        }
            break;
        case kCWButtonStatePressed:
        {
            self.buttonStatePressedColor = color;
        }
            break;
        default:
        {
            self.buttonStateNormalColor = BUTTON_STATE_NORMAL_COLOR;
            self.buttonStatePressedColor = BUTTON_STATE_PRESSED_COLOR;
        }
            break;
    }
}

- (void)setBorderColor:(UIColor*)color forState:(kCWButtonState)state{
    switch (state) {
        case kCWButtonStateNormal:
        {
            self.borderStateNormalColor = color;
        }
            break;
        case kCWButtonStatePressed:
        {
            self.borderStatePressedColor = color;
        }
            break;
        default:
        {
            self.borderStateNormalColor = BORDER_STATE_NORMAL_COLOR;
            self.borderStatePressedColor = BORDER_STATE_PRESSED_COLOR;
        }
            break;
    }
}


#pragma mark - button action functions

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [self setBackgroundColor:self.buttonStatePressedColor];
    [textLable setTextColor:self.textStatePressedColor];
    [self drawBoarderWithColor:self.borderStatePressedColor];
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    [self setBackgroundColor:self.buttonStateNormalColor];
    [textLable setTextColor:self.textStateNormalColor];
    [self drawBoarderWithColor:self.borderStateNormalColor];
    [delegate buttonWasPressed];
}

#pragma mark - helper functions

- (void)initializeDefaultButtonColors{
    self.buttonStateNormalColor = BUTTON_STATE_NORMAL_COLOR;
    self.buttonStatePressedColor = BUTTON_STATE_PRESSED_COLOR;
    self.textStateNormalColor = TEXT_STATE_NORMAL_COLOR;
    self.textStatePressedColor = TEXT_STATE_PRESSED_COLOR;
    self.borderStateNormalColor = BORDER_STATE_NORMAL_COLOR;
    self.borderStatePressedColor = BORDER_STATE_PRESSED_COLOR;
}

- (void)updateUIColorsWithState:(kCWButtonState)state{
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
        {
            [self initializeDefaultButtonColors];
            [self updateUIColorsWithState:kCWButtonStateNormal];
        }
            break;
    }

}

- (void)drawBoarderWithColor:(UIColor*)color{
    
}

@end












