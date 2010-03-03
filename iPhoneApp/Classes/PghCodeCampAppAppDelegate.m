//
//  PghCodeCampAppAppDelegate.m
//  PghCodeCampApp
//
//  Created by Jason Agostoni on 2/27/10.
//  Copyright Jason Agostoni 2010. All rights reserved.
//

#import "PghCodeCampAppAppDelegate.h"
#import <SystemConfiguration/SCNetworkReachability.h>
#import <sys/socket.h>
#import <netinet/in.h>
#import <netinet6/in6.h>
#import <arpa/inet.h>
#import <ifaddrs.h>
#import <netdb.h>

@implementation PghCodeCampAppAppDelegate

@synthesize window;
@synthesize rootController;
@synthesize newsNavController;
@synthesize sessionNavController;
@synthesize codeCampData;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    

    // Load data
	self.codeCampData = [CodeCampData alloc];
	//[self.codeCampData loadWithTestData];
	//[self.codeCampData loadFromWeb];
	
	[window addSubview:rootController.view];
	
    [window makeKeyAndVisible];
	[self.codeCampData loadFromBundle];
	
	PghCodeCampAppAppDelegate *app = [[UIApplication sharedApplication] delegate];
	
	
	if(self.isNetworkReachable) {
		application.networkActivityIndicatorVisible = YES;
		[app.codeCampData loadFromWeb];
		application.networkActivityIndicatorVisible = NO;
	}

}


- (void)dealloc {
	[codeCampData release];
	[rootController release];
	[sessionNavController release];
	[newsNavController release];
    [window release];
    [super dealloc];
}

- (BOOL) isNetworkReachable
{
	struct sockaddr_in zeroAddress;
    bzero(&zeroAddress, sizeof(zeroAddress));
    zeroAddress.sin_len = sizeof(zeroAddress);
    zeroAddress.sin_family = AF_INET;
	SCNetworkReachabilityRef reachability = SCNetworkReachabilityCreateWithAddress(kCFAllocatorDefault, (const struct sockaddr*)&zeroAddress);
	SCNetworkReachabilityFlags flags;
	SCNetworkReachabilityGetFlags(reachability, &flags);
	
	return flags & kSCNetworkFlagsReachable;
}
@end
