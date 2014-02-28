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
    [contentView setBackgroundColor:[UIColor orangeColor]];
    
	signInButton = [[CWFlatButton alloc]initWithFrame:CGRectMake(50, 50, 150, 40) andText:@"Sign In"];
    [contentView addSubview:signInButton];
    
    signUpButton = [[CWFlatButton alloc]initWithFrame:CGRectMake(50, 95, 150, 40) andText:@"Sign Up"];
    [contentView addSubview:signUpButton];
    
    [[self view]addSubview:contentView];
}

@end
