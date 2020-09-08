//
//  loadViewController.m
//  1
//
//  Created by 王旭 on 2020/9/5.
//  Copyright © 2020 王旭. All rights reserved.
//

#import "loadViewController.h"
#import "registerViewController.h"
#import "ViewController1.h"
#import "ViewController2.h"
#import "ViewController3.h"
#import "ViewController4.h"
#import "ViewController5.h"
@interface loadViewController ()

@end

@implementation loadViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _userStr = [[NSString alloc] init];
    _passwordStr = [[NSString alloc] init];
    
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
    
    UIButton *loadBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    UIButton *registerBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    loadBtn.frame = CGRectMake(100, 420, 50, 50);
    registerBtn.frame = CGRectMake(230, 420, 50, 50);
    
    loadBtn.tintColor = [UIColor blackColor];
    registerBtn.tintColor = [UIColor blackColor];
    
    [loadBtn setTitle:@"登陆" forState:UIControlStateNormal];
    [registerBtn setTitle:@"注册" forState:UIControlStateNormal];
    
    loadBtn.titleLabel.font = [UIFont systemFontOfSize:17];
    registerBtn.titleLabel.font = [UIFont systemFontOfSize:17];
    
    [loadBtn addTarget:self action:@selector(pressLoad) forControlEvents:UIControlEventTouchUpInside];
    [registerBtn addTarget:self action:@selector(pressRegister) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:loadBtn];
    [self.view addSubview:registerBtn];
}
- (void)pressLoad {
    NSString *user1Str = @"iOSnb123";
    NSString *pass1Str = @"123456789";
    
    //密码验证方式
    //1.传回来了东西
    //2.输入的跟预设的账号密码匹配
    if (((_userStr != nil) && (_passwordStr != nil)) || [_userTextField.text isEqualToString:user1Str] && [_passwordTextField.text isEqualToString:pass1Str]) {
       //创建视图
        ViewController1 *one = [[ViewController1 alloc] init];
        ViewController2 *two = [[ViewController2 alloc] init];
        ViewController3 *three = [[ViewController3 alloc] init];
        ViewController4 *four = [[ViewController4 alloc] init];
        ViewController5 *five = [[ViewController5 alloc] init];
        
        one.view.backgroundColor = [UIColor whiteColor];
        two.view.backgroundColor = [UIColor whiteColor];
        three.view.backgroundColor = [UIColor whiteColor];
        four.view.backgroundColor = [UIColor whiteColor];
        five.view.backgroundColor = [UIColor whiteColor];
       //导航栏
        UINavigationController *oneNav = [[UINavigationController alloc] initWithRootViewController:one];
        UINavigationController *twoNav = [[UINavigationController alloc] initWithRootViewController:two];
        UINavigationController *threeNav = [[UINavigationController alloc] initWithRootViewController:three];
        UINavigationController *fourNav = [[UINavigationController alloc] initWithRootViewController:four];
        UINavigationController *fiveNav = [[UINavigationController alloc] initWithRootViewController:five];
        
        oneNav.navigationBar.barTintColor = [UIColor whiteColor];
        twoNav.navigationBar.barTintColor = [UIColor whiteColor];
        threeNav.navigationBar.barTintColor = [UIColor whiteColor];
        fourNav.navigationBar.barTintColor = [UIColor whiteColor];
        fiveNav.navigationBar.barTintColor = [UIColor whiteColor];
        
        //分栏控制器
        UITabBarController* tbController = [UITabBarController new];
        tbController.tabBar.barTintColor = [UIColor whiteColor];
        NSArray* arrayVc = [NSArray arrayWithObjects:oneNav, twoNav, threeNav, fourNav, fiveNav,  nil];
        tbController.viewControllers = arrayVc;
        self.view.window.rootViewController = tbController;
        tbController.tabBar.translucent = NO;  //不透明
    }
}
- (void)pressRegister {
    registerViewController *regi = [registerViewController new];
    regi.registerValueDelegate = self;
    [self presentViewController:regi animated:YES completion:nil];
}
//收键盘
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.passwordTextField resignFirstResponder];
    [self.userTextField resignFirstResponder];
}
- (void)passName:(NSString *)userStr andPass:(NSString*)passwordStr {
    self.userTextField.text = userStr;
    self.passwordTextField.text = passwordStr;
    self.userStr = userStr;
    self.passwordStr = passwordStr;
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
