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
@property (strong) NSString *url;

-(id)initWithBoardTitle:(NSString*)theTitle URL:(NSString*)theURL;
-(NSMutableArray*)getThreads;
-(NSURL*) getFullURL;
-(void)addThread:(CVThread*)thread;
-(NSString*) title;

@end
