//
//  CVThread.h
//  chanView
//
//  Created by Grayson Chao on 11/13/13.
//  Copyright (c) 2013 Grayson Chao. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface CVThread : NSObject

@property (strong) NSDictionary *json;

-(id) initWithJSON:(NSDictionary*)sourceJSON;
-(BOOL) update;
-(NSMutableDictionary*) getPosts;

@end