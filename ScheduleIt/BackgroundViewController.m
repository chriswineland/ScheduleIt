//
//  BackgroundViewController.m
//  ScheduleIt
//
//  Created by Chris Wineland on 2/26/14.
//  Copyright (c) 2014 Chris Wineland. All rights reserved.
//

#import "BackgroundViewController.h"

#define navButtonBorder 8
#define navButtonWidth 23

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
	[self setUpNavBar];
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
    //this should maybe show a new error if it is differant then the displaying error
    if([[AppSessionContext singleton]isDisplayingError]) return;
    
    [[AppSessionContext singleton]setIsDisplayingError:YES];
    SIPostAcknoledgement* posack = [[SIPostAcknoledgement alloc]initWithMessage:[error dereferanceCodeToErrorMessage]];
    [[self view]addSubview:posack];
    [posack setDelegate:self];
    [posack moveDownAction];
}

- (void)initError:(SIError*)error WithCode:(NSString*)code{
    if(error == nil){
        error = [[SIError alloc]init];
    }
    [error setCode:code];
}


#pragma mark - nav bar helpers

- (void)setUpNavBar{
    [self clearNavBar];
    BOOL isOnBaseView = [[[self navigationController]viewControllers]count] == 0;
    if([[AppSessionContext singleton]isAUserSignedIn]){
        if(isOnBaseView){
            [self addSignOutButtonToNavBar];
        } else {
            [self addBackButtonToNavBar];
            [self addHomeButtonToNavBar];
        }
    } else {
        if(!isOnBaseView){
            [self addBackButtonToNavBar];
        }
    }
}

- (void)clearNavBar{
    [[self navigationItem]setBackBarButtonItem:nil];
    [[self navigationItem]setLeftBarButtonItem:nil];
    [[self navigationItem]setRightBarButtonItem:nil];
}

- (void)addBackButtonToNavBar{
    UIImage* image = [UIImage imageNamed:@"back.png"];
    
    UIButton* button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setExclusiveTouch:YES];
    [button addTarget:self action:@selector(backButtonHit) forControlEvents:UIControlEventTouchUpInside];
    [button setFrame:CGRectMake(navButtonBorder, navButtonBorder, navButtonWidth, navButtonWidth)];
    [button setBackgroundImage:image forState:UIControlStateNormal];
    [button setBackgroundImage:image forState:UIControlStateHighlighted];
    [button setBackgroundImage:image forState:UIControlStateDisabled];
    
    UIBarButtonItem* barButton = [[UIBarButtonItem alloc]initWithCustomView:button];
    
    [[self navigationItem]setLeftBarButtonItem:barButton];
}

- (void)addSignOutButtonToNavBar{
    UIImage* image = [UIImage imageNamed:@"exit.png"];
    
    UIButton* button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setExclusiveTouch:YES];
    [button addTarget:self action:@selector(signOutButtonHit) forControlEvents:UIControlEventTouchUpInside];
    [button setFrame:CGRectMake(navButtonBorder, navButtonBorder, navButtonWidth, navButtonWidth)];
    [button setBackgroundImage:image forState:UIControlStateNormal];
    [button setBackgroundImage:image forState:UIControlStateHighlighted];
    [button setBackgroundImage:image forState:UIControlStateDisabled];
    
    UIBarButtonItem* barButton = [[UIBarButtonItem alloc]initWithCustomView:button];
    
    [[self navigationItem]setRightBarButtonItem:barButton];
}

- (void)addHomeButtonToNavBar{
    UIImage* image = [UIImage imageNamed:@"home.png"];
    
    UIButton* button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setExclusiveTouch:YES];
    [button addTarget:self action:@selector(homeButtonHit) forControlEvents:UIControlEventTouchUpInside];
    [button setFrame:CGRectMake(navButtonBorder, navButtonBorder, navButtonWidth, navButtonWidth)];
    [button setBackgroundImage:image forState:UIControlStateNormal];
    [button setBackgroundImage:image forState:UIControlStateHighlighted];
    [button setBackgroundImage:image forState:UIControlStateDisabled];
    
    UIBarButtonItem* barButton = [[UIBarButtonItem alloc]initWithCustomView:button];
    
    [[self navigationItem]setRightBarButtonItem:barButton];
}

#pragma mark - nav bar selectors

- (void)backButtonHit{
    [[self navigationController]popViewControllerAnimated:YES];
}

- (void)signOutButtonHit{
    //sign out operation
}

- (void)homeButtonHit{
    [[self navigationController]popToRootViewControllerAnimated:YES];
}

#pragma mark - loading helpers

- (void)showLoading{
    
}

- (void)hideLoading{
    
}

@end
