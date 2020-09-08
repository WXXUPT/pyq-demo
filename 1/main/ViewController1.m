//
//  ViewController1.m
//  1
//
//  Created by 王旭 on 2020/9/5.
//  Copyright © 2020 王旭. All rights reserved.
//

#import "ViewController1.h"
#import "mainViewController.h"
@interface ViewController1 ()

@end

@implementation ViewController1

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"视图1";
    
    UIBarButtonItem *pushBtn = [[UIBarButtonItem alloc] initWithTitle:@"push" style:UIBarButtonItemStyleDone target:self action:@selector(pressPush)];
    self.navigationItem.rightBarButtonItem = pushBtn;
}
- (void)pressPush {
    mainViewController *main = [mainViewController new];
    
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:main];
    
    nav.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:nav animated:YES completion:nil];

}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
