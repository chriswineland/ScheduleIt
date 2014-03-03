//
//  SIButton.h
//  ScheduleIt
//
//  Created by Chris Wineland on 3/3/14.
//  Copyright (c) 2014 Chris Wineland. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum{
    kSIButtonTypePosative,
    kSIButtonTypeNegative
}SIButtonType;

@interface SIButton : UIButton {
    
}

@property SIButtonType butType;

- (id)initWithFrame:(CGRect)frame andButtonType:(SIButtonType)type;
- (void)setTitle:(NSString*)title;

@end
