//
//  CVBoard.m
//  chanView
//  Represents a 4chan board
//
//  Created by Grayson Chao on 11/13/13.
//  Copyright (c) 2013 Grayson Chao. All rights reserved.
//

#import "CVBoard.h"
#import "CVThread.h"
#import "AFNetworking.h"


@implementation CVBoard

@synthesize title;
@synthesize url;

- (id)initWithBoardTitle:(NSString*)theTitle URL: (NSURL*)theURL;
{
    self = [super init];
    self.title = theTitle;
    self.url = theURL;
    return self;
}

- (void) addThread:(CVThread*)thread {
    [_threads addObject:thread];
}
- (NSMutableArray*)getThreads {
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    manager.requestSerializer = [AFJSONRequestSerializer serializer];

    [manager
     GET: @"http://api.4chan.org/b/catalog.json"
     parameters: NULL
     success:^(AFHTTPRequestOperation *operation, id responseObject){
         for (int i = 0; i < 10; i++) {
             NSArray *myThreads = [[responseObject objectAtIndex:i] objectForKey:@"threads"];
             for (int j = 0; j < [myThreads count]; j++) {
                 CVThread *newThread = [[CVThread alloc] initWithJSON: [myThreads objectAtIndex: j]];
                 [self addThread:newThread];
             }
             
         }
         
     }
     failure:^(AFHTTPRequestOperation *operation, NSError *error){
         NSLog(@"Error: %@", error);} // failure callback block
     ];
    return 0;
}
@end
