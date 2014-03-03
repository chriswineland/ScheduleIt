//
//  SignInViewController.m
//  ScheduleIt
//
//  Created by Chris Wineland on 2/28/14.
//  Copyright (c) 2014 Chris Wineland. All rights reserved.
//

#import "SignInViewController.h"

#define SIGNINBUTTONTAG 1
#define SIGNUPBUTTONTAG 2

@interface SignInViewController ()

@end

@implementation SignInViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    SIScrollView* contentView = [[SIScrollView alloc]initWithFrame:CGRectMake(0, 0, screenWidth, screenHeight)];
    
    SIButton* signInButton = [[SIButton alloc]initWithFrame:CGRectMake(0, 155, screenWidth, BUTTON_HEIGHT) andButtonType:kSIButtonTypePosative];
    [signInButton setTitle:@"Sign In"];
    [signInButton setTag:SIGNINBUTTONTAG];
    [signInButton setDelegate:self];
    [contentView addSubview:signInButton];
    
    SIButton* signUpButton = [[SIButton alloc]initWithFrame:CGRectMake(0, [self verticalFrameOffsetOfUIElement:signInButton] + BUTTON_GAP, screenWidth, BUTTON_HEIGHT) andButtonType:kSIButtonTypeNegative];
    [signUpButton setTitle:@"Sigh Up"];
    [signUpButton setTag:SIGNUPBUTTONTAG];
    [signUpButton setDelegate:self];
    [contentView addSubview:signUpButton];
    
    [[self view]addSubview:contentView];
}

#pragma mark - SIButton Delegate

- (void)siButtonWasPressed:(id)sender{
    if([sender tag] == SIGNINBUTTONTAG){
        
    }else if ([sender tag] == SIGNUPBUTTONTAG){
        
    }
}

@end
