//
//  LYNotiveViewCell.m
//  OC版
//
//  Created by jjs on 2017/12/15.
//  Copyright © 2017年 iOS-LeiYu. All rights reserved.
//

#import "LYNotiveViewCell.h"

@implementation LYNotiveViewCell

- (instancetype)initWithReuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithFrame:CGRectZero];
    if (self) {
        _reuseIdentifier = reuseIdentifier;
        [self setupInitialUI];
    }
    return self;
}
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        NSLog(@"init a cell from xib");
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    return [self initWithReuseIdentifier:@""];
}

- (void)setupInitialUI
{
    self.backgroundColor = [UIColor whiteColor];
    _contentView = [[UIView alloc] init];
    [self addSubview:_contentView];
    
    _textLabel = [[UILabel alloc]init];
    [_contentView addSubview:_textLabel];
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    _contentView.frame = self.bounds;
    _textLabel.frame = CGRectMake(10, 0, self.frame.size.width - 20, self.frame.size.height);
}


@end
