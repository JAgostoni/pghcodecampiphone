//
//  SessionItem.h
//  PghCodeCampApp
//
//  Created by Jason Agostoni on 2/27/10.
//  Copyright 2010 Pittsburgh Code Camp. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface SessionItem : NSObject {
	NSString *title;
	NSString *synopsis;
	NSString *time;
	NSString *room;
	NSString *presenter;
	NSString *bio;
}

@property (nonatomic, retain) NSString *title;
@property (nonatomic, retain) NSString *synopsis;
@property (nonatomic, retain) NSString *time;
@property (nonatomic, retain) NSString *room;
@property (nonatomic, retain) NSString *presenter;
@property (nonatomic, retain) NSString *bio;
@end
