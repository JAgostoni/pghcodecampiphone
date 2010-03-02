//
//  CodeCampData.h
//  PghCodeCampApp
//
//  Created by Jason Agostoni on 2/27/10.
//  Copyright 2010 Jason Agostoni. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NewsItem.h"
#import "SessionItem.h"

@interface CodeCampData : NSObject {
	NSMutableArray *newsItems;
	NSMutableArray *sessionItems;
	NewsItem *currentNewsItem;
	SessionItem *currentSessionItem;
	NSString *currentNodeName;
	
}

@property (nonatomic, retain) NSMutableArray *newsItems;
@property (nonatomic, retain) NSMutableArray *sessionItems;
@property (nonatomic, retain) NSString *currentNodeName;
@property (nonatomic, retain) NewsItem *currentNewsItem;
@property (nonatomic, retain) SessionItem *currentSessionItem;

-(void) loadWithTestData;
-(void) loadFromWeb;
-(void) loadFromDocuments;
-(void) loadFromXML: (NSData *)rawData;
-(void) saveToDocuments: (NSData *)xmlData;
@end
