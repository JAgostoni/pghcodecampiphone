//
//  NewsTableViewController.h
//  PghCodeCampApp
//
//  Created by Jason Agostoni on 2/27/10.
//  Copyright 2010 Jason Agostoni. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CodeCampData.h";
#import "NewsDetailViewController.h";

@interface NewsTableViewController : UITableViewController <UITableViewDelegate, UITableViewDataSource> {
	IBOutlet UITableView *newsTableView;
	CodeCampData *codeCampData;
	IBOutlet UITableViewCell *newsViewCell;
}

@property (nonatomic, retain) IBOutlet UITableView *newsTableView;
@property (nonatomic, retain) IBOutlet UITableViewCell *newsViewCell;

@end
