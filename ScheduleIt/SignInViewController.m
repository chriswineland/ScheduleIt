//
//  SignInViewController.m
//  ScheduleIt
//
//  Created by Chris Wineland on 2/28/14.
//  Copyright (c) 2014 Chris Wineland. All rights reserved.
//

#import "SignInViewController.h"

@interface SignInViewController ()

@end

@implementation SignInViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIScrollView* contentView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, screenWidth, screenHeight)];
    [contentView setScrollEnabled:YES];
    [contentView setBounces:YES];
    [contentView setAlwaysBounceVertical:YES];
    [contentView setDelaysContentTouches:NO];
    [contentView setBackgroundColor:[UIColor whiteColor]];
    
    signInButton = [[SIButton alloc]initWithFrame:CGRectMake(0, 155, screenWidth, 45) andButtonType:kSIButtonTypePosative];
    [signInButton setTitle:@"Sign In"];
    [contentView addSubview:signInButton];
    
    signUpButton = [[SIButton alloc]initWithFrame:CGRectMake(0, 205, screenWidth, 45) andButtonType:kSIButtonTypeNegative];
    [signUpButton setTitle:@"Sigh Up"];
    [contentView addSubview:signUpButton];
    
    [[self view]addSubview:contentView];
}

#pragma mark - Button Actions

- (void)signInAction:(id)sender{
    
}

@end
