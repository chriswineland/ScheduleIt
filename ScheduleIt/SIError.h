//
//  SIError.h
//  ScheduleIt
//
//  Created by Chris Wineland on 3/3/14.
//  Copyright (c) 2014 Chris Wineland. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SIErrorCodes.h"


@interface SIError : NSObject{
    SIErrorCode errorCode;
}

- (void)setCode:(SIErrorCode)newCode;
- (NSString*)dereferanceCodeToErrorMessage;
- (id)initWithCode:(SIErrorCode)code;

@end
