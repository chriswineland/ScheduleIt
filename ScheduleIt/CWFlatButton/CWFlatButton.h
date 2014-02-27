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
    kTopVerticalAligned,
    kCenterVerticalAligned,
    kBottomVerticalAligned
}kVerticalAlignment;

typedef enum{
    kLeftHorizontalAligned,
    kCenterHorizontalAligned,
    kRightHorizontalAligned
}kHorizontalAlignment;

typedef enum{
    kCWButtonStateNormal,
    kCWButtonStatePressed
}kCWButtonState;



@interface CWFlatButton : UIView{
    kVerticalAlignment verticalTextAlignment;
    kHorizontalAlignment horizontalTextAlignment;
}

@property(nonatomic, strong)UILabel* textLable;

- (id)init;
- (id)initWithFrame:(CGRect)frame;
- (id)initWithFrame:(CGRect)frame andText:(NSString*)text;
- (void)setFontColor:(UIColor*)color forState:(kCWButtonState)state;
- (void)setButtonColor:(UIColor*)color forState:(kCWButtonState)state;
- (void)setText:(NSString*)text;
- (void)setFont:(UIFont*)font;
- (void)setNumberOfLines:(NSInteger)lines;
- (void)setVerticalTextAlignment:(kVerticalAlignment)vAlignment;
- (void)setHorizontalTextAlignment:(kHorizontalAlignment)hAlignment;
- (void)setFrame:(CGRect)frame;

@end