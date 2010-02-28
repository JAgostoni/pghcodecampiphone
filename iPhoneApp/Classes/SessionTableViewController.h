//
//  SessionTableViewController.h
//  PghCodeCampApp
//
//  Created by Jason Agostoni on 2/27/10.
//  Copyright 2010 Pittsburgh Code Camp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CodeCampData.h"
#import "PghCodeCampAppAppDelegate.h"
#import "SessionItem.h"

@interface SessionTableViewController : UITableViewController {
	CodeCampData *codeCampData;
}


@end
