//
//  NewsItem.m
//  PghCodeCampApp
//
//  Created by Jason Agostoni on 2/27/10.
//  Copyright 2010 Jason Agostoni. All rights reserved.
//

#import "NewsItem.h"


@implementation NewsItem
@synthesize title;
@synthesize content;
@synthesize author;
@synthesize postedDate;

-(void) dealloc
{
	[title release];
	[content release];
	[author release];
	[postedDate release];
	[super dealloc];
}


@end
