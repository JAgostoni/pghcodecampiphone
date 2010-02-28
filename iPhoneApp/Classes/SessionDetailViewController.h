//
//  SessionDetailViewController.h
//  PghCodeCampApp
//
//  Created by Jason Agostoni on 2/28/10.
//  Copyright 2010 Pittsburgh Code Camp. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface SessionDetailViewController : UIViewController {
	IBOutlet UILabel *presenter;
	IBOutlet UILabel *time;
	IBOutlet UILabel *room;
	IBOutlet UITextView *synopsis;
}
@property (nonatomic, retain) IBOutlet UILabel *presenter;
@property (nonatomic, retain) IBOutlet UILabel *time;
@property (nonatomic, retain) IBOutlet UILabel *room;
@property (nonatomic, retain) IBOutlet UITextView *synopsis;

@end
