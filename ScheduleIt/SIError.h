//
//  SIError.h
//  ScheduleIt
//
//  Created by Chris Wineland on 3/3/14.
//  Copyright (c) 2014 Chris Wineland. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SIError : NSObject{
    NSString* code;
}

- (void)setCode:(NSString*)code;

@end
