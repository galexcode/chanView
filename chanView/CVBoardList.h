//
//  CVBoardList.h
//  chanView
//
//  Created by Grayson Chao on 11/17/13.
//  Copyright (c) 2013 Grayson Chao. All rights reserved.
//

#import <Foundation/Foundation.h>
@class CVBoard;
@class MasterViewController;

@interface CVBoardList : NSObject
@property (copy) NSMutableArray *boardList;

-(void)load;

@end
