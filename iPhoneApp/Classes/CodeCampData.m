//
//  CodeCampData.m
//  PghCodeCampApp
//
//  Created by Jason Agostoni on 2/27/10.
//  Copyright 2010 Jason Agostoni. All rights reserved.
//

#import "CodeCampData.h"


@implementation CodeCampData

@synthesize newsItems;
@synthesize newsDetails;

-(void) loadWithTestData
{
	self.newsItems = [[NSMutableArray alloc] initWithObjects:@"News Item 1", @"News Item 2", @"News Item 3", nil];
	self.newsDetails = [[NSMutableArray alloc] initWithObjects:@"These are the details of the news item 1", @"These are the details of news item 2", @"These are the details of news item 3", nil];
	
}

-(void)dealloc 
{
	[newsDetails release];
	[newsItems release];
	[super dealloc];
	
}

@end
