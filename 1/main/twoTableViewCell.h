//
//  twoTableViewCell.h
//  1
//
//  Created by 王旭 on 2020/9/6.
//  Copyright © 2020 王旭. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface twoTableViewCell : UITableViewCell
@property (nonatomic, strong) UIImageView *headImageView;
@property (nonatomic, strong) UIImageView *content1ImageView;
@property (nonatomic, strong) UIImageView *content2ImageView;
@property (nonatomic, strong) UILabel *nameLabel;
@property (nonatomic, strong) UILabel *contentLabel;
@property (nonatomic, strong) UILabel *placeLabel;
@property (nonatomic, strong) UILabel *timeLabel;
@end

NS_ASSUME_NONNULL_END
