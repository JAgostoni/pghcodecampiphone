//
//  PghCodeCampAppAppDelegate.h
//  PghCodeCampApp
//
//  Created by Jason Agostoni on 2/25/10.
//  Copyright Jason Agostoni 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PghCodeCampAppAppDelegate : NSObject <UIApplicationDelegate, UITabBarControllerDelegate> {
    UIWindow *window;
    UITabBarController *tabBarController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UITabBarController *tabBarController;

@end
