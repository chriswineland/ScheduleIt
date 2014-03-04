//
//  BackgroundViewController.h
//  ScheduleIt
//
//  Created by Chris Wineland on 2/26/14.
//  Copyright (c) 2014 Chris Wineland. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Constants.h"
#import "SIError.h"

@interface BackgroundViewController : UIViewController{
    CGFloat screenWidth;
    CGFloat screenHeight;
}

- (CGFloat)verticalFrameOffsetOfUIElement:(UIView*)view;

@end
