//
//  rootViewController.m
//  PassDateForNavigation
//
//  Created by Karma on 16/5/30.
//  Copyright © 2016年 陈昆涛. All rights reserved.
//

#import "rootViewController.h"
#import "DetailViewController.h"
@interface rootViewController()<DetailViewControllerDelegate>

@property (weak, nonatomic) IBOutlet UITextField *rootTextField;

@end
@implementation rootViewController

-(void)viewDidLoad{
    [super viewDidLoad];
    self.navigationController.title=@"RootVc";
}
- (IBAction)changeVC:(id)sender {
    UIStoryboard *storyBoard=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    DetailViewController *detailVC=[storyBoard instantiateViewControllerWithIdentifier:@"DetailViewController"];
    
    detailVC.text=self.rootTextField.text;
    detailVC.delegate=self;
    
    [self.navigationController pushViewController:detailVC animated:YES];
    
}
-(void)detailViewController:(DetailViewController *)detailViewController returnRootVcWithNewString:(NSString *)string{
    NSLog(@"%s",__func__);
    
    self.rootTextField.text = string;
}


@end
