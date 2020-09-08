//
//  headTableViewCell.m
//  1
//
//  Created by 王旭 on 2020/9/6.
//  Copyright © 2020 王旭. All rights reserved.
//

#import "headTableViewCell.h"

@implementation headTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    self.headoneImageView = [UIImageView new];
    self.headtwoImageView = [UIImageView new];
    self.nameLabel = [UILabel new];
    
    [self.contentView addSubview:_headoneImageView];
    [self.contentView addSubview:_headtwoImageView];
    [self.contentView addSubview:_nameLabel];
    
    return self;
}
- (void)layoutSubviews {
    [super layoutSubviews];
    
    _nameLabel.font = [UIFont systemFontOfSize:15];
    _nameLabel.text = @"勾勾";
    _nameLabel.textColor = [UIColor whiteColor];
    _nameLabel.frame = CGRectMake(270, 220, 50, 20);
    
    _headoneImageView.frame = CGRectMake(0, 0, 414, 250);
    [_headoneImageView setImage:[UIImage imageNamed:@"hh4.jpg"]];
    
    _headtwoImageView.frame = CGRectMake(310, 207, 60, 60);
    [_headtwoImageView setImage:[UIImage imageNamed:@"hh5.jpg"]];
}
@end
