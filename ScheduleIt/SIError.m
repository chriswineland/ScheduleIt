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
    return [self initWithCode:@""];
}

- (id)initWithCode:(NSString* const)code{
    self = [super init];
    if(self){
        errorCode = code;
    }
    return self;
}

- (NSString*)dereferanceCodeToErrorMessage{
    return @"Error";
}

- (void)setCode:(NSString*)newCode{
    errorCode = newCode;
}

@end
