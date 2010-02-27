//
//  CodeCampData.h
//  PghCodeCampApp
//
//  Created by Jason Agostoni on 2/27/10.
//  Copyright 2010 Jason Agostoni. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface CodeCampData : NSObject {
	NSMutableArray *newsItems;
	NSMutableArray *newsDetails;
	
}

@property (nonatomic, retain) NSMutableArray *newsItems;
@property (nonatomic, retain) NSMutableArray *newsDetails;
-(void) loadWithTestData;
@end
