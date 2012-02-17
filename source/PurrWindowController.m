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

- (void) setNotification: (GrowlApplicationNotification *) theNotification {
	[super setNotification:theNotification];
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
    xNotification.soundName = NSUserNotificationDefaultSoundName;
    [nc deliverNotification:xNotification];
    nc.delegate = self;
    
}

- (void)userNotificationCenter:(NSUserNotificationCenter *)center didDeliverNotification:(NSUserNotification *)notification {
}

- (void)userNotificationCenter:(NSUserNotificationCenter *)center didActivateNotification:(NSUserNotification *)notification {
}

@end
