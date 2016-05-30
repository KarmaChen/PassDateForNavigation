//
//  DetailViewController.h
//  PassDateForNavigation
//
//  Created by Karma on 16/5/30.
//  Copyright © 2016年 陈昆涛. All rights reserved.
//

#import <UIKit/UIKit.h>
@class DetailViewController;

@protocol DetailViewControllerDelegate<NSObject>

-(void) detailViewController:(DetailViewController *) detailViewController returnRootVcWithNewString:(NSString *) string;

@end
@interface DetailViewController : UIViewController
@property (nonatomic,copy)NSString *text;
@property (nonatomic, weak) id <DetailViewControllerDelegate> delegate;
@end
