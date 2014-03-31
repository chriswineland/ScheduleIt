//
//  UserSessionContext.h
//  ScheduleIt
//
//  Created by Chris Wineland on 3/4/14.
//  Copyright (c) 2014 Chris Wineland. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SIUserProfile.h"

@interface UserSessionContext : NSObject{
    SIUserProfile* userProfile;
    NSMutableArray* apointments;
    NSMutableArray* favoriteServices;
    NSMutableArray* servicesOffered;
}

+(id)singleton;

@end
