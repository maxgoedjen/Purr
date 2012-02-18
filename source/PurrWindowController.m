//
//  GrowlSampleWindowController.m
//  Display Plugins
//
//  Copyright 2006-2009 The Growl Project. All rights reserved.
//

#import "PurrWindowController.h"
#import "NSWindow+Transforms.h"
#import "GrowlDefinesInternal.h"
#import "GrowlDefines.h"
#import "GrowlApplicationNotification.h"

#import "GrowlSlidingWindowTransition.h"

@implementation PurrWindowController

#pragma mark -

- (id)init {
    self = [super init];
    if (self) {
        lastHash = 0;
    }
    return self;
}

- (void) setNotification: (GrowlApplicationNotification *) theNotification {

	if (!theNotification)
		return;

    NSString *name = [theNotification applicationName];
	NSString *title = [theNotification title];
	NSString *text  = [theNotification notificationDescription];
        
    NSUserNotificationCenter *nc = [NSUserNotificationCenter defaultUserNotificationCenter];
    
    NSUserNotification *xNotification = [[NSUserNotification alloc] init];
    xNotification.title = [NSString stringWithFormat:@"%@ - %@", name, title];
    xNotification.informativeText = [NSString stringWithFormat:@"%@", text];
    xNotification.deliveryDate = [NSDate date];
    
    if ([theNotification hash] != lastHash) {
        [nc deliverNotification:xNotification];
    }
    
    lastHash = [theNotification hash];
    
}

- (void)userNotificationCenter:(NSUserNotificationCenter *)center didDeliverNotification:(NSUserNotification *)notification {
}

- (void)userNotificationCenter:(NSUserNotificationCenter *)center didActivateNotification:(NSUserNotification *)notification {
}

@end
