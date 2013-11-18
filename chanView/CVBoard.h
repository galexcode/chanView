//
//  CVBoard.h
//  chanView
//
//  Created by Grayson Chao on 11/13/13.
//  Copyright (c) 2013 Grayson Chao. All rights reserved.
//

#import <Foundation/Foundation.h>
@class CVThread;

@interface CVBoard : NSObject
@property (strong) NSMutableArray *threads;
@property (strong) NSString *title;
@property (strong) NSURL *url;

-(id)initWithBoardTitle:(NSString*)title URL:(NSURL*)url;
-(NSMutableArray*)getThreads;
-(void)addThread:(CVThread*)thread;
-(NSString*) title;

@end
