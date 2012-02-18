//
//  GrowlSampleDisplay.h
//  Growl Display Plugins
//
//  Copyright 2006-2009 The Growl Project. All rights reserved.
//

#import "Purr.h"
#import "PurrWindowController.h"
#import "GrowlApplicationNotification.h"
#import <GrowlDefinesInternal.h>
#import <GrowlDefines.h>

@implementation Purr

- (id) init {
	if ((self = [super init])) {
		windowControllerClass = NSClassFromString(@"PurrWindowController");
	}
	return self;
}

#pragma mark -
#pragma mark GrowlPositionController Methods
#pragma mark -

- (BOOL)requiresPositioning {
	return NO;
}

#pragma mark -
#pragma mark GAB
#pragma	mark -

- (void) configureBridge:(GrowlNotificationDisplayBridge *)theBridge {
    
	
}

@end
