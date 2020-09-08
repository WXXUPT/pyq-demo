//
//  registerViewController.h
//  1
//
//  Created by 王旭 on 2020/9/5.
//  Copyright © 2020 王旭. All rights reserved.
//

#import "ViewController.h"

NS_ASSUME_NONNULL_BEGIN
@protocol registerValueDelegate <NSObject>

- (void)passName:(NSString *)userStr andPass:(NSString*)passwordStr;


@end
@interface registerViewController : ViewController
@property (nonatomic, strong) UITextField *userTextField;
@property (nonatomic, strong) UITextField *passwordTextField;
@property id<registerValueDelegate> registerValueDelegate;
@end

NS_ASSUME_NONNULL_END
