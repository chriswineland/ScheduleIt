//
//  UserSessionContext.m
//  ScheduleIt
//
//  Created by Chris Wineland on 3/4/14.
//  Copyright (c) 2014 Chris Wineland. All rights reserved.
//

#import "UserSessionContext.h"

@implementation UserSessionContext

+ (id)singleton{
    static UserSessionContext *singleton = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        singleton = [[self alloc] init];
    });
    return singleton;
}

@end
