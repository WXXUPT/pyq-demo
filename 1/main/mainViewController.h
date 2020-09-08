//
//  mainViewController.h
//  1
//
//  Created by 王旭 on 2020/9/5.
//  Copyright © 2020 王旭. All rights reserved.
//

#import "ViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface mainViewController : ViewController
<UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;
@end

NS_ASSUME_NONNULL_END
