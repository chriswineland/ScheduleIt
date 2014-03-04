//
//  SIError.m
//  ScheduleIt
//
//  Created by Chris Wineland on 3/3/14.
//  Copyright (c) 2014 Chris Wineland. All rights reserved.
//

#import "SIError.h"

@implementation SIError

-(NSString*)dereferanceCodeToErrorMessage{
    return @"Error";
}

- (void)setCode:(NSString*)newCode{
    code = newCode;
}

@end
