//
//  CWFlatButton.h
//  CWFlatButton
//
//  Created by Chris Wineland on 2/13/14.
//  Copyright (c) 2014 Chris Wineland. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


typedef enum{
    kCWButtonStateNormal,
    kCWButtonStatePressed
}kCWButtonState;

@protocol CWFlatButtonDelegate;

@interface CWFlatButton : UIView{
    id<CWFlatButtonDelegate> delegate;
    UILabel* textLable;
}

@property(nonatomic, strong)id<CWFlatButtonDelegate> delegate;
@property(nonatomic, strong)UIColor* buttonStateNormalColor;
@property(nonatomic, strong)UIColor* buttonStatePressedColor;
@property(nonatomic, strong)UIColor* textStateNormalColor;
@property(nonatomic, strong)UIColor* textStatePressedColor;
@property(nonatomic, strong)UIColor* borderStateNormalColor;
@property(nonatomic, strong)UIColor* borderStatePressedColor;

- (id)init;
- (id)initWithFrame:(CGRect)frame;
- (id)initWithFrame:(CGRect)frame andText:(NSString*)text;
- (void)setFontColor:(UIColor*)color forState:(kCWButtonState)state;
- (void)setButtonColor:(UIColor*)color forState:(kCWButtonState)state;
- (void)setBorderColor:(UIColor*)color forState:(kCWButtonState)state;
- (void)setFrame:(CGRect)frame;

@end

@protocol CWFlatButtonDelegate <NSObject>

-(void)buttonWasPressed;

@end