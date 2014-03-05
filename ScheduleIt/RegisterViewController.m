//
//  RegisterViewController.m
//  ScheduleIt
//
//  Created by Chris Wineland on 3/4/14.
//  Copyright (c) 2014 Chris Wineland. All rights reserved.
//

#import "RegisterViewController.h"


#define registerButtonTag 1

@interface RegisterViewController ()

@end

@implementation RegisterViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	[[self navigationItem]setTitle:@"Register"];
    
    SIScrollView* contentView = [[SIScrollView alloc]initWithFrame:CGRectMake(0, 0, screenWidth, screenHeight)];
    
    createUITTextField = [[SITextField alloc]initWithFrame:CGRectMake(borderWidth, borderWidth, screenWidth-borderWidthx2, siTextFieldHeight)];
    [createUITTextField setDelegate:self];
    [createUITTextField setPlaceholder:@"Enter New User ID"];
    [contentView addSubview:createUITTextField];
    
    createPasscodeField = [[SITextField alloc]initWithFrame:CGRectMake(borderWidth, [self verticalFrameOffsetOfUIElement:createUITTextField]+borderWidth, screenWidth-borderWidthx2, siTextFieldHeight)];
    [createPasscodeField setSecureTextEntry:YES];
    [createPasscodeField setDelegate:self];
    [createPasscodeField setPlaceholder:@"Create Passcode"];
    [contentView addSubview:createPasscodeField];
        
    confermPasscodeField = [[SITextField alloc]initWithFrame:CGRectMake(borderWidth, [self verticalFrameOffsetOfUIElement:createPasscodeField]+borderWidth, screenWidth-borderWidthx2, siTextFieldHeight)];
    [confermPasscodeField setSecureTextEntry:YES];
    [confermPasscodeField setDelegate:self];
    [confermPasscodeField setPlaceholder:@"Re Enter Passcode"];
    [contentView addSubview:confermPasscodeField];
    
    SIButton* registerButton = [[SIButton alloc]initWithFrame:CGRectMake(borderWidth, [self verticalFrameOffsetOfUIElement:confermPasscodeField]+EntryFieldToButtonGap, screenWidth-borderWidthx2, siButtonHeight) andButtonType:kSIButtonTypeNegative];
    [registerButton setTitle:@"Register"];
    [registerButton setTag:registerButtonTag];
    [registerButton setDelegate:self];
    [contentView addSubview:registerButton];
    
    [[self view]addSubview:contentView];
}

#pragma mark - sibutton delegate

- (void)siButtonWasPressed:(id)sender{
    
}

#pragma mark - helper functions

- (SIError*)validateInputs{
    SIError* error = nil;
    
    if([[createUITTextField text]length] == 0){
        [self initError:error WithCode:@"MISSING_UID"];
    } else if([[createPasscodeField text]length] == 0 ||
              [[confermPasscodeField text]length] == 0){
        [self initError:error WithCode:@"MISSING_PASSCODE"];
    } else if ([[createPasscodeField text]length] > 6 ||
               [[confermPasscodeField text]length] > 6){
        [self initError:error WithCode:@"INVALID_PASSCODE_LENGTH"];
    } else if (![[createPasscodeField text] compare:[confermPasscodeField text]] == NSOrderedSame){
        [self initError:error WithCode:@"PASSCODES_DONT_MATCH"];
    }
    
    return error;
}

@end





