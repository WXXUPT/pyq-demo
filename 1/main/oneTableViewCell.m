//
//  oneTableViewCell.m
//  1
//
//  Created by 王旭 on 2020/9/6.
//  Copyright © 2020 王旭. All rights reserved.
//

#import "oneTableViewCell.h"

@implementation oneTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    _headImageView = [UIImageView new];
    _contentImageView = [UIImageView new];
    _contentLabel = [UILabel new];
    _placeLabel = [UILabel new];
    _timeLabel = [UILabel new];
    _nameLabel = [UILabel new];
    
    [self.contentView addSubview:_headImageView];
    [self.contentView addSubview:_contentImageView];
    [self.contentView addSubview:_contentLabel];
    [self.contentView addSubview:_placeLabel];
    [self.contentView addSubview:_timeLabel];
    [self.contentView addSubview:_nameLabel];
    
    return self;
}
- (void)layoutSubviews {
    [super layoutSubviews];
    
    _headImageView.frame = CGRectMake(5, 5, 55, 55);
    [_headImageView setImage:[UIImage imageNamed:@"hh6.jpg"]];
    
    _nameLabel.frame = CGRectMake(72, 10, 200, 20);
    _nameLabel.font = [UIFont systemFontOfSize:16];
    _nameLabel.textColor = [UIColor colorWithRed:0.05 green:0.1 blue:0.65 alpha:1.0];
    
    _contentLabel.frame = CGRectMake(72, 40, 310, 25);
    _contentLabel.font = [UIFont systemFontOfSize:18];
    _contentLabel.textColor = [UIColor blackColor];
    
    _contentImageView.frame = CGRectMake(72, 75, 150, 150);
    [_contentImageView setImage:[UIImage imageNamed:@"hh1.jpg"]];
    
    _placeLabel.frame = CGRectMake(72, 235, 200, 20);
    _placeLabel.font = [UIFont systemFontOfSize:16];
    _placeLabel.textColor = [UIColor colorWithRed:0.05 green:0.1 blue:0.65 alpha:1.0];
    
    _timeLabel.frame = CGRectMake(72, 260, 200, 20);
    _timeLabel.font = [UIFont systemFontOfSize:16];
    _timeLabel.textColor = [UIColor grayColor];
}
@end
