//
//  registerViewController.m
//  1
//
//  Created by 王旭 on 2020/9/5.
//  Copyright © 2020 王旭. All rights reserved.
//

#import "registerViewController.h"

@interface registerViewController ()

@end

@implementation registerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    _userTextField = [[UITextField alloc] init];
    _passwordTextField = [[UITextField alloc] init];
    
    _userTextField.frame = CGRectMake(60, 200, 250, 50);
    _passwordTextField.frame = CGRectMake(60, 300, 250, 50);
    
    [_userTextField setBorderStyle:UITextBorderStyleRoundedRect];
    [_passwordTextField setBorderStyle:UITextBorderStyleRoundedRect];
    
    _userTextField.placeholder = @"请输入账号...";
    _passwordTextField.placeholder = @"请输入密码...";
    
    [self.view addSubview:_userTextField];
    [self.view addSubview:_passwordTextField];
    
    UIButton *sureBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    sureBtn.frame = CGRectMake(160, 400, 50, 50);
    [sureBtn setTitle:@"确定" forState:UIControlStateNormal];
    sureBtn.tintColor = [UIColor blackColor];
    sureBtn.titleLabel.font = [UIFont systemFontOfSize:17];
    [sureBtn addTarget:self action:@selector(pressSure) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:sureBtn];
}
- (void)pressSure {
    [self.registerValueDelegate passName:self.userTextField.text andPass:self.passwordTextField.text];
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.passwordTextField resignFirstResponder];
    [self.userTextField resignFirstResponder];
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
