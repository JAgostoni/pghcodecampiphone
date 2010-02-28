//
//  PghCodeCampAppAppDelegate.m
//  PghCodeCampApp
//
//  Created by Jason Agostoni on 2/27/10.
//  Copyright Jason Agostoni 2010. All rights reserved.
//

#import "PghCodeCampAppAppDelegate.h"

@implementation PghCodeCampAppAppDelegate

@synthesize window;
@synthesize rootController;
@synthesize newsNavController;
@synthesize sessionNavController;
@synthesize codeCampData;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    

    // Load data
	self.codeCampData = [CodeCampData alloc];
	[self.codeCampData loadWithTestData];
	
	[window addSubview:rootController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
	[codeCampData release];
	[rootController release];
	[sessionNavController release];
	[newsNavController release];
    [window release];
    [super dealloc];
}


@end
