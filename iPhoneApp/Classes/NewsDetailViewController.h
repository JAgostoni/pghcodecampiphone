//
//  NewsDetailViewController.h
//  PghCodeCampApp
//
//  Created by Jason Agostoni on 2/27/10.
//  Copyright 2010 Jason Agostoni. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface NewsDetailViewController : UIViewController {
	NSString *detailText;
	IBOutlet UITextView *detailTextView;
}

@property (nonatomic, retain) NSString *detailText;
@end
