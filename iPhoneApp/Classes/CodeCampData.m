//
//  CodeCampData.m
//  PghCodeCampApp
//
//  Created by Jason Agostoni on 2/27/10.
//  Copyright 2010 Jason Agostoni. All rights reserved.
//

#import "CodeCampData.h"
#import "NewsItem.h"
#import "SessionItem.h"

@implementation CodeCampData

@synthesize newsItems;
@synthesize sessionItems;

-(void) loadWithTestData
{
	NewsItem *item;
	
	item = [NewsItem alloc];
	item.title = @"News Item 1";
	item.content = @"These are the details of news item 1";
	item.author = @"Jason";
	item.postedDate = @"Jan 12";
	self.newsItems = [[NSMutableArray alloc] initWithObjects: item, nil];
	[item release];
	
	item = [NewsItem alloc];
	item.title = @"News Item 2";
	item.content = @"These are the details of news item 2";
	item.author = @"Mike";
	item.postedDate = @"Jan 10";
	[self.newsItems addObject:item];
	[item release];

	SessionItem *session;
	session = [SessionItem alloc];
	session.title = @"Session 1";
	session.synopsis = @"Session 1 demontrates how session does something to help you do somethng else";
	session.time = @"8:00 am";
	session.room = @"Room 201";
	session.presenter = @"Jason";
	session.bio = @"Jason does stuff for a living working for a company doing things there";
	self.sessionItems = [[NSMutableArray alloc] initWithObjects:session, nil];
	[session release];

	session = [SessionItem alloc];
	session.title = @"Session 2";
	session.synopsis = @"Session 2 demontrates how session does something to help you do somethng else";
	session.time = @"8:00 am";
	session.room = @"Room 205";
	session.presenter = @"Mike";
	session.bio = @"Mike does stuff for a living working for a company doing things there";
	[self.sessionItems addObject:session];
	[session release];
}

-(void)dealloc 
{
	[newsItems release];
	[sessionItems release];
	[super dealloc];
	
}

@end
