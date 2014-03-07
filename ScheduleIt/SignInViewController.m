//
//  SignInViewController.m
//  ScheduleIt
//
//  Created by Chris Wineland on 2/28/14.
//  Copyright (c) 2014 Chris Wineland. All rights reserved.
//

#import "SignInViewController.h"
#import "RegisterViewController.h"
#import "AccountMainViewController.h"

#define signInButtonTag 1
#define registerButtonTag 2

@interface SignInViewController ()

@end

@implementation SignInViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [[self navigationItem]setTitle:@"Sign In"];
    
    SIScrollView* contentView = [[SIScrollView alloc]initWithFrame:CGRectMake(0, 0, screenWidth, screenHeight)];
    
    uidTextField = [[SITextField alloc]initWithFrame:CGRectMake(borderWidth, borderWidth, screenWidth-borderWidthx2, siTextFieldHeight)];
    [uidTextField setDelegate:self];
    [uidTextField setPlaceholder:@"User ID"];
    [contentView addSubview:uidTextField];
    
    passcodeField = [[SITextField alloc]initWithFrame:CGRectMake(borderWidth, [self verticalFrameOffsetOfUIElement:uidTextField]+borderWidth, screenWidth-borderWidthx2, siTextFieldHeight)];
    [passcodeField setSecureTextEntry:YES];
    [passcodeField setDelegate:self];
    [passcodeField setPlaceholder:@"Passcode"];
    [contentView addSubview:passcodeField];
    
    SIButton* signInButton = [[SIButton alloc]initWithFrame:CGRectMake(borderWidth, [self verticalFrameOffsetOfUIElement:passcodeField]+entryFieldToButtonGap, screenWidth-borderWidthx2, siButtonHeight) andButtonType:kSIButtonTypePosative];
    [signInButton setTitle:@"Sign In"];
    [signInButton setTag:signInButtonTag];
    [signInButton setDelegate:self];
    [contentView addSubview:signInButton];
    
    SIButton* registerButton = [[SIButton alloc]initWithFrame:CGRectMake(borderWidth, [self verticalFrameOffsetOfUIElement:signInButton]+siButtonGap, screenWidth-borderWidthx2, siButtonHeight) andButtonType:kSIButtonTypeNegative];
    [registerButton setTitle:@"Register"];
    [registerButton setTag:registerButtonTag];
    [registerButton setDelegate:self];
    [contentView addSubview:registerButton];
    
    [[self view]addSubview:contentView];
}

#pragma mark - SIButton Delegate

- (void)siButtonWasPressed:(id)sender{
    if([sender tag] == signInButtonTag){
        SIError* error = [self validateInputs];
        if(error){
            [self handleError:error];
        } else {
            [self signInAction];
        }
    }else if ([sender tag] == registerButtonTag){
        [self registurAction];
    }
}

#pragma mark - uitextfield Delegate



#pragma mark - helper functions

- (void)signInAction{
    SIError* validInputs = [self validateInputs];
    if(validInputs == nil){
        [[AppSessionContext singleton]setIsAUserSignedIn:YES];
        AccountMainViewController* vcl = [[AccountMainViewController alloc]init];
        [[self navigationController]pushViewController:vcl animated:YES];
    } else {
        [self handleError:validInputs];
    }
}

- (void)registurAction{
    RegisterViewController* vcl = [[RegisterViewController alloc]init];
    [[self navigationController]pushViewController:vcl animated:YES];
}

- (SIError*)validateInputs{
    SIError* error = nil;
    
    if([[uidTextField text]length] == 0){
        error = [[SIError alloc]initWithCode:kSIErrorCodeMissingUID];
    } else if([[passcodeField text]length] == 0){
        error = [[SIError alloc]initWithCode:kSIErrorCodeMissingPasscode];
    } else if ([[passcodeField text]length] > 6){
        error = [[SIError alloc]initWithCode:kSIErrorCodeInvalidPasscodeLength];
    }
    
    return error;
}

@end
