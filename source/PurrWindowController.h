//
//  GrowlSampleWindowController.h
//  Display Plugins
//
//  Copyright 2006-2009 The Growl Project. All rights reserved.
//

#import "GrowlDisplayWindowController.h"

@class PurrWindowController;

@interface PurrWindowController : GrowlDisplayWindowController <NSUserNotificationCenterDelegate> {
    NSInteger lastHash;
}
	
@end
