//
//  CVBoardList.m
//  chanView
//
//  Created by Grayson Chao on 11/17/13.
//  Copyright (c) 2013 Grayson Chao. All rights reserved.
//

#import "CVBoardList.h"
#import "CVBoard.h"
#import "AFNetworking.h"

@implementation CVBoardList
@synthesize boardList;

- (id)init
{
    self = [super init];
    if (self) {
        boardList = [[NSMutableArray alloc] init];
        [self load];
    }
    return self;
}

-(void) load {
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    manager.requestSerializer = [AFJSONRequestSerializer serializer];
  
    [manager
     GET: @"http://api.4chan.org/boards.json"
     parameters: NULL
     success:^(AFHTTPRequestOperation *operation, id responseObject){
         NSArray *boards = [responseObject objectForKey:@"boards"];
         for (int i = 0; i < [boards count]; i++) {
             NSDictionary *board = [boards objectAtIndex:i];
             CVBoard *createdBoard = [[CVBoard alloc ]initWithBoardTitle: [board objectForKey:@"title"] URL: [board objectForKey:@"board"]];
             [boardList addObject:createdBoard];
         }
     }
     failure:^(AFHTTPRequestOperation *operation, NSError *error){
         NSLog(@"Error: %@", error);} // failure callback block
     ];
    
}

@end
