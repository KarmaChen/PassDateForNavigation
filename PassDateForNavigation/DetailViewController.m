//
//  DetailViewController.m
//  PassDateForNavigation
//
//  Created by Karma on 16/5/30.
//  Copyright © 2016年 陈昆涛. All rights reserved.
//

#import "DetailViewController.h"
@interface DetailViewController()
@property (weak, nonatomic) IBOutlet UITextField *detailTextField;


@end
@implementation DetailViewController
-(void)viewDidLoad{
    [super viewDidLoad];
    self.navigationController.title=@"DetailVC";
    
    //更新值
    self.detailTextField.text=self.text;
}
- (IBAction)returnRootVC:(id)sender {
    if ([self.delegate respondsToSelector:@selector(detailViewController:returnRootVcWithNewString:)]) {
        [self.delegate detailViewController:self returnRootVcWithNewString:self.detailTextField.text];
    }
    
    [self.navigationController popToRootViewControllerAnimated:YES];
}

@end
