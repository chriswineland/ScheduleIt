//
//  SIErrorCodes.h
//  ScheduleIt
//
//  Created by Chris Wineland on 3/6/14.
//  Copyright (c) 2014 Chris Wineland. All rights reserved.
//

typedef enum{
    kSIErrorCodeMissingUID,
    kSIErrorCodeMissingPasscode,
    kSIErrorCodeInvalidPasscodeLength,
    kSIErrorCodePasscodesDoNotMatch,
    kSIErrorCodeUnknown
}SIErrorCode;