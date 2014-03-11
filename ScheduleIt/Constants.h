//
//  Constants.h
//  ScheduleIt
//
//  Created by Chris Wineland on 2/26/14.
//  Copyright (c) 2014 Chris Wineland. All rights reserved.
//

#ifndef ScheduleIt_Constants_h
#define ScheduleIt_Constants_h

#define RGBA(r, g, b, a)         [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a]
#define RGB(r, g, b)             [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:1]

#define bold16FontType           [UIFont fontWithName:@"HelveticaNeue-Bold" size:16]
#define regular18FontType        [UIFont fontWithName:@"HelveticaNeue" size:18]

#define backGroundOffWhite       RGB(249,247,244)

#define primaryColor1            RGB(0,76,182)
#define primaryColor2            RGB(49,131,195)
#define primaryColor3            RGB(88,148,195)
#define complementColor1         RGB(255,116,0)

#define borderWidth              18
#define borderWidthx2            (borderWidth*2)
#define entryFieldToButtonGap    (borderWidth*3)
#define contentGap               2

#define elementShadowColor       [UIColor blackColor].CGColor
#define elementShadowOpacity     0.3
#define elementShadowRadius      3
#define elementShadowOffset      CGSizeMake(3.0f, 3.0f)

#endif
