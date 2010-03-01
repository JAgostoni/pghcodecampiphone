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
@synthesize currentNodeName;
@synthesize currentNewsItem;
@synthesize currentSessionItem;

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

-(void) loadFromWeb
{
	// Reset
	[newsItems release];
	[sessionItems release];
	newsItems = [[NSMutableArray alloc] init];
	sessionItems = [[NSMutableArray alloc] init];
	NSXMLParser *xmlData;
	xmlData = [[NSXMLParser alloc] initWithContentsOfURL: [NSURL URLWithString:@"http://localhost/SampleData.xml"]];
	[xmlData setDelegate:self];
	currentNodeName = [[NSString alloc] init];
	[xmlData parse];
	[xmlData release];
}
-(void)dealloc 
{
	[currentNewsItem release];
	[currentSessionItem release];
	[newsItems release];
	[sessionItems release];
	[super dealloc];
	
}


// NSXMLParser delegate methods
- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict {
	self.currentNodeName = elementName;
    
    if ( [elementName isEqualToString:@"NewsItem"]) { 
		self.currentNewsItem = [[NewsItem alloc] init];
	} else if ([elementName isEqualToString:@"Session"]) {
		self.currentSessionItem = [[SessionItem alloc] init];		
    }
}

- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string {
    if( [self.currentNodeName isEqualToString:@"Author"] ) {  
        [self.currentNewsItem setAuthor:string];
    } else if ([self.currentNodeName isEqualToString:@"Date"]) {
		[self.currentNewsItem setPostedDate:string];
    } else if ([self.currentNodeName isEqualToString:@"Text"]) {
		[self.currentNewsItem setContent:string];
    } else if ([self.currentNodeName isEqualToString:@"NewsTitle"]) {
		self.currentNewsItem.title = string;
    } else if ([self.currentNodeName isEqualToString:@"Title"]) {
		[self.currentSessionItem setTitle:string];
    } else if ([self.currentNodeName isEqualToString:@"Presenter"]) {
		[self.currentSessionItem setPresenter:string];
    } else if ([self.currentNodeName isEqualToString:@"Time"]) {
		[self.currentSessionItem setTime:string];
    } else if ([self.currentNodeName isEqualToString:@"Room"]) {
		[self.currentSessionItem setRoom:string];
    } else if ([self.currentNodeName isEqualToString:@"Abstract"]) {
		[self.currentSessionItem setSynopsis:string];
    } else if ([self.currentNodeName isEqualToString:@"Bio"]) {
		[self.currentSessionItem setBio:string];
	}
}

- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName {
    // if the screen_name node is closing, turn the flag back off
    if ( [elementName isEqualToString:@"NewsItem"]) {
        [newsItems addObject:self.currentNewsItem];
		[self.currentNewsItem release];
	} else if ([elementName isEqualToString:@"Session"]) {
		[sessionItems addObject:self.currentSessionItem];
		[self.currentSessionItem release];
    }
	self.currentNodeName = @"";
}

@end
