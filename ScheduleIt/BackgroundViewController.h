//
//  BackgroundViewController.h
//  ScheduleIt
//
//  Created by Chris Wineland on 2/26/14.
//  Copyright (c) 2014 Chris Wineland. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Constants.h"
#import "Global.h"
#import "SIError.h"
#import "SIPostAcknoledgement.h"

@interface BackgroundViewController : UIViewController<SIPostAcknoledgementDelegate>{
    CGFloat screenWidth;
    CGFloat screenHeight;
}

- (CGFloat)verticalFrameOffsetOfUIElement:(UIView*)view;
- (void)handleError:(SIError*)error;
- (void)showLoading;
- (void)hideLoading;

@end
