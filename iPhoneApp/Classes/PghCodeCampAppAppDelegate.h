//
//  PghCodeCampAppAppDelegate.h
//  PghCodeCampApp
//
//  Created by Jason Agostoni on 2/27/10.
//  Copyright Jason Agostoni 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RootTabBarController.h";
#import "NewsNavController.h";
#import	"CodeCampData.h";


@interface PghCodeCampAppAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	IBOutlet RootTabBarController *rootController;
	IBOutlet NewsNavController *newsNavController;
	IBOutlet UINavigationController *sessionNavController;
	CodeCampData *codeCampData;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet RootTabBarController *rootController;
@property (nonatomic, retain) IBOutlet NewsNavController *newsNavController;
@property (nonatomic, retain) IBOutlet UINavigationController *sessionNavController;
@property (nonatomic, retain) CodeCampData *codeCampData;

- (BOOL) isNetworkReachable;
@end

