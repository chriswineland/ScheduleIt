//
//  SIError.m
//  ScheduleIt
//
//  Created by Chris Wineland on 3/3/14.
//  Copyright (c) 2014 Chris Wineland. All rights reserved.
//

#import "SIError.h"

@implementation SIError

- (id)init{
    return [self initWithCode:kSIErrorCodeUnknown];
}

- (id)initWithCode:(SIErrorCode)code{
    self = [super init];
    if(self){
        errorCode = code;
    }
    return self;
}

- (NSString*)dereferanceCodeToErrorMessage{
    NSString* errorMessage = @"";
    switch (errorCode) {
        case kSIErrorCodeMissingUID:
        {
            errorMessage = @"UID was left blank";
        }
            break;
        case kSIErrorCodePasscodesDoNotMatch:
        {
            errorMessage = @"Passcodes do not match";
        }
            break;
        case kSIErrorCodeInvalidPasscodeLength:
        {
            errorMessage = @"Invalid passcode length";
        }
            break;
        case kSIErrorCodeMissingPasscode:
        {
            errorMessage = @"Passcode was left blank";
        }
            break;
        case kSIErrorCodeUnknown:
        {
            errorMessage = @"Sorry, an error has occured";
        }
            break;
        default:
        {
            
        }
            break;
    }
    return errorMessage;
}

- (void)setCode:(SIErrorCode)newCode{
    errorCode = newCode;
}

@end
