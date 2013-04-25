//
//  iCarouselExampleAppDelegate.m
//  iCarouselExample
//
//  Created by kiennd on 24/04/2013.
//  Copyright 2011 Charcoal Design. All rights reserved.
//

#import "iCarouselExampleAppDelegate.h"
#import "iCarouselExampleViewController.h"

@implementation iCarouselExampleAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [_window addSubview:_viewController.view];
    [_window makeKeyAndVisible];
    return YES;
}


@end
