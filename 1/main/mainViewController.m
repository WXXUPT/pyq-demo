//
//  mainViewController.m
//  1
//
//  Created by 王旭 on 2020/9/5.
//  Copyright © 2020 王旭. All rights reserved.
//

#import "mainViewController.h"
#import "headTableViewCell.h"
#import "oneTableViewCell.h"
#import "twoTableViewCell.h"
@interface mainViewController ()

@end

@implementation mainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = @"朋友圈";
    
    UIImage *fanhuiImage = [UIImage imageNamed:@"hh.png"] ;
    UIBarButtonItem *fanhuiBtn = [[UIBarButtonItem alloc] initWithImage:fanhuiImage style:UIBarButtonItemStylePlain target:self action:@selector(pressFanhui)];
    fanhuiBtn.tintColor = [UIColor blackColor];
    self.navigationItem.leftBarButtonItem = fanhuiBtn;
    
    UIImage *xiangjiImage = [UIImage imageNamed:@"照相机.png"] ;
    UIBarButtonItem *xiangjiBtn = [[UIBarButtonItem alloc] initWithImage:xiangjiImage style:UIBarButtonItemStylePlain target:self action:@selector(pressXiangji)];
    xiangjiBtn.tintColor = [UIColor blackColor];
    self.navigationItem.rightBarButtonItem = xiangjiBtn;
    
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 414, 740) style:UITableViewStylePlain];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    [_tableView registerClass:[headTableViewCell class] forCellReuseIdentifier:@"gougou1"];
    [_tableView registerClass:[oneTableViewCell class] forCellReuseIdentifier:@"gougou2"];
    [_tableView registerClass:[twoTableViewCell class] forCellReuseIdentifier:@"gougou3"];
    [self.view addSubview:_tableView];
    // Do any additional setup after loading the view.
}
- (void)pressFanhui {
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (void)pressXiangji {
    
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 11;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        return 285;
    } else {
        return 300;
    }
}
- (UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        headTableViewCell *cell = [[headTableViewCell alloc] init];
        if (!cell) {
            cell = [[headTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"gougou1"];
        }
        return cell;
    } else if (indexPath.section == 1) {
        oneTableViewCell *cell = [[oneTableViewCell alloc] init];
        if (!cell) {
            cell = [[oneTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"gougou2"];
        }
        cell.nameLabel.text = @"洪福齐天";
        cell.contentLabel.text = @"为有牺牲多壮志,敢叫日月换新天";
        cell.placeLabel.text = @"长安";
        cell.timeLabel.text = @"刚才";
        return cell;
    } else if (indexPath.section == 2) {
        twoTableViewCell *cell = [[twoTableViewCell alloc] init];
        if (!cell) {
            cell = [[twoTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"gougou3"];
        }
        cell.nameLabel.text = @"星河杳杳";
        cell.contentLabel.text = @"但使龙城飞将在,不教胡马度阴山";
        cell.placeLabel.text = @"北京";
        cell.timeLabel.text = @"昨天";
        return cell;
    } else if (indexPath.section == 3) {
        oneTableViewCell *cell = [[oneTableViewCell alloc] init];
        if (!cell) {
            cell = [[oneTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"gougou2"];
        }
        cell.nameLabel.text = @"yeah";
        cell.contentLabel.text = @"朱颜辞镜花辞树,最是人间留不住";
        cell.placeLabel.text = @"上海";
        cell.timeLabel.text = @"下午2:02";
        return cell;
    } else if (indexPath.section == 4) {
        twoTableViewCell *cell = [twoTableViewCell new];
        if (!cell) {
            cell = [[twoTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"gougou3"];
        }
        cell.nameLabel.text = @"普通人勾勾";
        cell.contentLabel.text = @"欲买桂花同载酒,终不似少年游";
        cell.placeLabel.text = @"南京";
        cell.timeLabel.text = @"下午3:07";
        return cell;
    } else if (indexPath.section == 5) {
        oneTableViewCell *cell = [[oneTableViewCell alloc] init];
        if (!cell) {
            cell = [[oneTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"gougou2"];
        }
        cell.nameLabel.text = @"洪福齐天";
        cell.contentLabel.text = @"为有牺牲多壮志,敢叫日月换新天";
        cell.placeLabel.text = @"长安";
        cell.timeLabel.text = @"刚才";
        return cell;
    } else if (indexPath.section == 6) {
        twoTableViewCell *cell = [[twoTableViewCell alloc] init];
        if (!cell) {
            cell = [[twoTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"gougou3"];
        }
        cell.nameLabel.text = @"星河杳杳";
        cell.contentLabel.text = @"但使龙城飞将在,不教胡马度阴山";
        cell.placeLabel.text = @"北京";
        cell.timeLabel.text = @"昨天";
        return cell;
    } else if (indexPath.section == 7) {
      
           oneTableViewCell *cell = [[oneTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"gougou2"];
        
        cell.nameLabel.text = @"yeah";
        cell.contentLabel.text = @"朱颜辞镜花辞树,最是人间留不住";
        cell.placeLabel.text = @"上海";
        cell.timeLabel.text = @"下午2:02";
        return cell;
    } else if (indexPath.section == 8) {
        twoTableViewCell *cell = [twoTableViewCell new];
        if (!cell) {
            cell = [[twoTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"gougou3"];
        }
        cell.nameLabel.text = @"普通人勾勾";
        cell.contentLabel.text = @"欲买桂花同载酒,终不似少年游";
        cell.placeLabel.text = @"南京";
        cell.timeLabel.text = @"下午3:07";
        return cell;
    } else if (indexPath.section == 9) {
        oneTableViewCell *cell = [[oneTableViewCell alloc] init];
        if (!cell) {
            cell = [[oneTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"gougou2"];
        }
        cell.nameLabel.text = @"洪福齐天";
        cell.contentLabel.text = @"为有牺牲多壮志,敢叫日月换新天";
        cell.placeLabel.text = @"长安";
        cell.timeLabel.text = @"刚才";
        return cell;
    } else if (indexPath.section == 10) {
        twoTableViewCell *cell = [[twoTableViewCell alloc] init];
        if (!cell) {
            cell = [[twoTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"gougou3"];
        }
        cell.nameLabel.text = @"星河杳杳";
        cell.contentLabel.text = @"但使龙城飞将在,不教胡马度阴山";
        cell.placeLabel.text = @"北京";
        cell.timeLabel.text = @"昨天";
        return cell;
    } 
    return 0;
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
