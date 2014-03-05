//
//  SIPostAcknoledgement.m
//  ScheduleIt
//
//  Created by Chris Wineland on 3/4/14.
//  Copyright (c) 2014 Chris Wineland. All rights reserved.
//

#import "SIPostAcknoledgement.h"
#import "Constants.h"
#import "SILabelTextBlock.h"

#define postAcknoledgementHeight    54
#define imagePadding                5
#define imageLength                 44
#define statueBarHeight             20
#define navBarHeight                44
#define posackTimeOut               3.0

@implementation SIPostAcknoledgement

@synthesize delegate;

- (id)init{
    return [self initWithMessage:@""];
}

- (id)initWithFrame:(CGRect)frame
{
    return [self initWithMessage:@""];
}

- (id)initWithMessage:(NSString*)message{
    self = [super initWithFrame:CGRectMake(0, 0, 0, 0)];
    if(self){
        wasTaped = NO;
        CGRect screenRect = [[UIScreen mainScreen] bounds];
        [self setFrame:CGRectMake(0, -postAcknoledgementHeight, screenRect.size.width, postAcknoledgementHeight)];
        [self setBackgroundColor:complementColor1];
        [self setAlpha:.9];
        
        UIImageView* image = [[UIImageView alloc]initWithFrame:CGRectMake(imagePadding, imagePadding, imageLength, imageLength)];
        [image setImage:[UIImage imageNamed:@"messaging_error@2x.png"]];
        [self addSubview:image];
        
        SILabelTextBlock* messageText = [[SILabelTextBlock alloc]initWithFrame:CGRectMake(postAcknoledgementHeight, imagePadding, screenRect.size.width - postAcknoledgementHeight+imagePadding, imageLength)];
        [messageText setText:message];
        [self addSubview:messageText];
    }
    return self;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    wasTaped = YES;
    [delegate postAcknoledgmentWasTapped:self];
}

#pragma mark - animation functions

- (void)moveDownAction{
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    [UIView beginAnimations:@"moveDown" context:NULL];
    [UIView setAnimationDuration:0.1];
    [self setFrame:CGRectMake(0, statueBarHeight+navBarHeight, screenRect.size.width, postAcknoledgementHeight)];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationCurve: UIViewAnimationCurveEaseIn];
    [UIView commitAnimations];
    
    [NSTimer scheduledTimerWithTimeInterval:posackTimeOut
                                     target:self
                                   selector:@selector(timeOutOccured)
                                   userInfo:nil
                                    repeats:NO];
}

- (void)timeOutOccured{
    if(!wasTaped){
        [self moveUpAction];
    }
}

- (void)moveUpAction{
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    [UIView beginAnimations:@"moveUp" context:NULL];
    [UIView setAnimationDuration:0.1];
    [self setFrame:CGRectMake(0, -postAcknoledgementHeight, screenRect.size.width, postAcknoledgementHeight)];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationCurve: UIViewAnimationCurveEaseIn];
    [UIView commitAnimations];
}

#pragma mark - animation delegate

- (void)animationDidStop:(NSString *)animID finished:(BOOL)didFinish context:(void *)context{
    if([animID compare:@"moveDown"] == NSOrderedSame){
        [delegate postAcknoledgmentFinnishedMoveDownAction:self];
    } else {
        [delegate postAcknoledgmentFinnishedMoveUpAction:self];
    }
}

@end
