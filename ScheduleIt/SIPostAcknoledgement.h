//
//  SIPostAcknoledgement.h
//  ScheduleIt
//
//  Created by Chris Wineland on 3/4/14.
//  Copyright (c) 2014 Chris Wineland. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SIPostAcknoledgementDelegate;

@interface SIPostAcknoledgement : UIView{
    id<SIPostAcknoledgementDelegate>delegate;
}

@property id<SIPostAcknoledgementDelegate>delegate;

- (id)initWithMessage:(NSString*)message;
- (void)moveDownAction;
- (void)moveUpAction;


@end

@protocol SIPostAcknoledgementDelegate <NSObject>

- (void)postAcknoledgmentFinnishedMoveUpAction:(SIPostAcknoledgement*)posack;
- (void)postAcknoledgmentFinnishedMoveDownAction:(SIPostAcknoledgement*)posack;
- (void)postAcknoledgmentWasTapped:(SIPostAcknoledgement*)posack;
@end