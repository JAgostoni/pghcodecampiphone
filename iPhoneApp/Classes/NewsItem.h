//
//  NewsItem.h
//  PghCodeCampApp
//
//  Created by Jason Agostoni on 2/27/10.
//  Copyright 2010 Jason Agostoni. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NewsItem : NSObject {
	NSString *title;
	NSString *content;
	NSString *author;
	NSString *postedDate;
}


@property (nonatomic, retain) NSString *title;
@property (nonatomic, retain) NSString *content;
@property (nonatomic, retain) NSString *author;
@property (nonatomic, retain) NSString *postedDate;

@end
