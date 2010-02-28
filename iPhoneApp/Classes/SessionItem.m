//
//  SessionItem.m
//  PghCodeCampApp
//
//  Created by Jason Agostoni on 2/27/10.
//  Copyright 2010 Pittsburgh Code Camp. All rights reserved.
//

#import "SessionItem.h"


@implementation SessionItem

@synthesize title;
@synthesize synopsis;
@synthesize time;
@synthesize room;
@synthesize presenter;
@synthesize bio;

-(void) dealloc
{
	[title release];
	[synopsis release];
	[time release];
	[room release];
	[presenter release];
	[bio release];
	[super dealloc];
}
@end
