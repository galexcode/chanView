//
//  DetailViewController.h
//  chanView
//
//  Created by Grayson Chao on 11/13/13.
//  Copyright (c) 2013 Grayson Chao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController <UISplitViewControllerDelegate>

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UIWebView *boardView;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
