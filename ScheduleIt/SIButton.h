//
//  SIButton.h
//  ScheduleIt
//
//  Created by Chris Wineland on 3/3/14.
//  Copyright (c) 2014 Chris Wineland. All rights reserved.
//

#import <UIKit/UIKit.h>

#define siButtonHeight    40
#define siButtonGap       3

typedef enum{
    kSIButtonTypePosative,
    kSIButtonTypeNegative
}SIButtonType;

@protocol SIButtonDelegate;

@interface SIButton : UIButton {
    id<SIButtonDelegate> delegate;
}

@property SIButtonType butType;
@property id<SIButtonDelegate> delegate;

- (id)initWithFrame:(CGRect)frame andButtonType:(SIButtonType)type;
- (void)setTitle:(NSString*)title;

@end

@protocol SIButtonDelegate <NSObject>

- (void)siButtonWasPressed:(id)sender;

@end
