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
    [[self navigationItem]setTitle:@"Schedule It"];
    
    SIScrollView* contentView = [[SIScrollView alloc]initWithFrame:CGRectMake(0, 0, screenWidth, screenHeight)];
    
    SILabelHeader* signInDirectiveText = [[SILabelHeader alloc]initWithFrame:CGRectMake(borderWidth, borderWidth, screenWidth-borderWidthx2, siHeaderLableHeight)];
    [signInDirectiveText setText:@"User ID"];
    [contentView addSubview:signInDirectiveText];
    
    uidTextField = [[SITextField alloc]initWithFrame:CGRectMake(borderWidth, [self verticalFrameOffsetOfUIElement:signInDirectiveText]+contentGap, screenWidth-borderWidthx2, siTextFieldHeight)];
    [uidTextField setDelegate:self];
    [contentView addSubview:uidTextField];
    
    SILabelHeader* passcodeDirectiveText = [[SILabelHeader alloc]initWithFrame:CGRectMake(borderWidth, [self verticalFrameOffsetOfUIElement:uidTextField]+contentGap, screenWidth-borderWidthx2,  siHeaderLableHeight)];
    [passcodeDirectiveText setText:@"Passcode"];
    [contentView addSubview:passcodeDirectiveText];
    
    passcodeField = [[SITextField alloc]initWithFrame:CGRectMake(borderWidth, [self verticalFrameOffsetOfUIElement:passcodeDirectiveText]+contentGap, screenWidth-borderWidthx2, siTextFieldHeight)];
    [passcodeField setSecureTextEntry:YES];
    [passcodeField setDelegate:self];
    [contentView addSubview:passcodeField];
    
    SIButton* signInButton = [[SIButton alloc]initWithFrame:CGRectMake(borderWidth, [self verticalFrameOffsetOfUIElement:passcodeField]+borderWidthx2, screenWidth-borderWidthx2, siButtonHeight) andButtonType:kSIButtonTypePosative];
    [signInButton setTitle:@"Sign In"];
    [signInButton setTag:SIGNINBUTTONTAG];
    [signInButton setDelegate:self];
    [contentView addSubview:signInButton];
    
    SIButton* signUpButton = [[SIButton alloc]initWithFrame:CGRectMake(borderWidth, [self verticalFrameOffsetOfUIElement:signInButton]+siButtonGap, screenWidth-borderWidthx2, siButtonHeight) andButtonType:kSIButtonTypeNegative];
    [signUpButton setTitle:@"Sign Up"];
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

#pragma mark - uitextfield Delegate



#pragma mark - helper functions

- (SIError*)validateInputs{
    SIError* error = nil;
    
    if([[uidTextField text]length] == 0){
        [self initError:error WithCode:@"MISSING_UID"];
    } else if([[passcodeField text]length] == 0){
        [self initError:error WithCode:@"MISSING_PASSCODE"];
    } else if ([[passcodeField text]length] > 6){
        [self initError:error WithCode:@"INVALID_PASSCODE_LENGTH"];
    }
    
    return error;
}

- (void)initError:(SIError*)error WithCode:(NSString*)code{
    if(error == nil){
        error = [[SIError alloc]init];
    }
    [error setCode:code];
}


@end
