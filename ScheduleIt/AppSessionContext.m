//
//  AppSessionContext.m
//  ScheduleIt
//
//  Created by Chris Wineland on 3/4/14.
//  Copyright (c) 2014 Chris Wineland. All rights reserved.
//

#import "AppSessionContext.h"

@implementation AppSessionContext

- (id)init{
    self = [super init];
    if(self){
        self.isDisplayingError = NO;
        self.isAUserSignedIn = NO;
    }
    return self;
}

+ (id)singleton{
    static AppSessionContext *singleton = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        singleton = [[self alloc] init];
    });
    return singleton;
}


@end
