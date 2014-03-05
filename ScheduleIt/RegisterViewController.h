//
//  RegisterViewController.h
//  ScheduleIt
//
//  Created by Chris Wineland on 3/4/14.
//  Copyright (c) 2014 Chris Wineland. All rights reserved.
//

#import "BackgroundViewController.h"
#import "SIScrollView.h"
#import "SILabelHeader.h"
#import "SITextField.h"
#import "SIButton.h"

@interface RegisterViewController : BackgroundViewController<UITextFieldDelegate, SIButtonDelegate>{
    
    SITextField* createUITTextField;
    SITextField* createPasscodeField;
    SITextField* confermPasscodeField;
}

@end
