//
//  MasterViewController.h
//  chanView
//
//  Created by Grayson Chao on 11/13/13.
//  Copyright (c) 2013 Grayson Chao. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;
@class CVBoardList;

@interface MasterViewController : UITableViewController

@property (strong, nonatomic) DetailViewController *detailViewController;

@property (strong) CVBoardList *boards;


@end
