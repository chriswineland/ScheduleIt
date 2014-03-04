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
    
    UITextField* uidTextField = [[UITextField alloc]initWithFrame:CGRectMake(borderWidth, [self verticalFrameOffsetOfUIElement:signInDirectiveText]+contentGap, screenWidth-borderWidthx2, textFieldHeight)];
    [uidTextField setBorderStyle:UITextBorderStyleBezel];
    [uidTextField setAutocorrectionType:UITextAutocorrectionTypeNo];
    [uidTextField setSpellCheckingType:UITextSpellCheckingTypeNo];
    [contentView addSubview:uidTextField];
    
    SILabelHeader* passcodeDirectiveText = [[SILabelHeader alloc]initWithFrame:CGRectMake(borderWidth, [self verticalFrameOffsetOfUIElement:uidTextField]+contentGap, screenWidth-borderWidthx2,  siHeaderLableHeight)];
    [passcodeDirectiveText setText:@"Passcode"];
    [contentView addSubview:passcodeDirectiveText];
    
    SIButton* signInButton = [[SIButton alloc]initWithFrame:CGRectMake(borderWidth, 155, screenWidth-borderWidthx2, siButtonHeight) andButtonType:kSIButtonTypePosative];
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

@end
