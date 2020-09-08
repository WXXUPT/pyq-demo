//
//  loadViewController.h
//  1
//
//  Created by 王旭 on 2020/9/5.
//  Copyright © 2020 王旭. All rights reserved.
//

#import "ViewController.h"
#import "registerViewController.h"
NS_ASSUME_NONNULL_BEGIN

@interface loadViewController : ViewController
<UITextFieldDelegate, registerValueDelegate>
@property (nonatomic, strong) UITextField *userTextField;
@property (nonatomic, strong) UITextField *passwordTextField;
@property NSString *userStr;         //注册时候用
@property NSString *passwordStr;
@end

NS_ASSUME_NONNULL_END
