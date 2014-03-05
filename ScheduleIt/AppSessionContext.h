//
//  AppSessionContext.h
//  ScheduleIt
//
//  Created by Chris Wineland on 3/4/14.
//  Copyright (c) 2014 Chris Wineland. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AppSessionContext : NSObject{
    
}

@property BOOL isDisplayingError;
@property BOOL isAUserSignedIn;

+(id)singleton;

@end