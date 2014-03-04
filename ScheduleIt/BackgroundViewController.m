//
//  BackgroundViewController.m
//  ScheduleIt
//
//  Created by Chris Wineland on 2/26/14.
//  Copyright (c) 2014 Chris Wineland. All rights reserved.
//

#import "BackgroundViewController.h"

@interface BackgroundViewController ()

@end

@implementation BackgroundViewController

- (id)init{
    if(self = [super init]){
        CGRect screenRect = [[UIScreen mainScreen] bounds];
        screenHeight = screenRect.size.height;
        screenWidth = screenRect.size.width;
        [[self view]setBackgroundColor:backGroundOffWhite];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - SIPosack delegate functions

- (void)postAcknoledgmentFinnishedMoveDownAction:(SIPostAcknoledgement*)posack{
    
}

- (void)postAcknoledgmentFinnishedMoveUpAction:(SIPostAcknoledgement*)posack{
    [[AppSessionContext singleton]setIsDisplayingError:NO];
}

-(void)postAcknoledgmentWasTapped:(SIPostAcknoledgement*)posack{
    [posack moveUpAction];
}

#pragma mark - helper functions

- (CGFloat)verticalFrameOffsetOfUIElement:(UIView*)view{
    return view.frame.origin.y + view.frame.size.height;
}

- (void)handleError:(SIError*)error{
    if (error == nil) return;
    if([[AppSessionContext singleton]isDisplayingError]) return;
    
    [[AppSessionContext singleton]setIsDisplayingError:YES];
    SIPostAcknoledgement* posack = [[SIPostAcknoledgement alloc]initWithMessage:[error dereferanceCodeToErrorMessage]];
    [[self view]addSubview:posack];
    [posack setDelegate:self];
    [posack moveDownAction];
}

- (void)showLoading{
    
}

- (void)hideLoading{
    
}

@end
