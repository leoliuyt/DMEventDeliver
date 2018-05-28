//
//  DMBottomView.m
//  DMEventDeliver
//
//  Created by lbq on 2018/5/28.
//  Copyright © 2018年 lbq. All rights reserved.
//

#import "DMBottomView.h"
#import <Masonry.h>
@interface DMBottomView ()
@property (nonatomic, strong) UIButton *locBtn;
@property (nonatomic, strong) UIButton *scanBtn;
@property (nonatomic, strong) UIButton *telBtn;

@end

@implementation DMBottomView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self makeUI];
    }
    return self;
}


- (void)makeUI
{
    self.backgroundColor =  [UIColor orangeColor];
    [self.locBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.width.equalTo(@35.);
        make.left.equalTo(self.mas_left).offset(10);
        make.bottom.equalTo(self.mas_bottom);
    }];
    
    [self.scanBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.height.equalTo(@70);
        make.centerX.equalTo(self.mas_centerX);
        make.bottom.equalTo(self.mas_bottom);
    }];
    
    
    [self.telBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.width.equalTo(@35);
        make.bottom.equalTo(self.mas_bottom);
        make.right.equalTo(self.mas_right).offset(-10);
    }];
}

#pragma mark - Lazy Load

- (UIButton *)locBtn
{
    if (_locBtn == nil) {
        _locBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_locBtn setImage:[UIImage imageNamed:@"home_loc"] forState:UIControlStateNormal];
        [self addSubview:_locBtn];
    }
    return _locBtn;
}

- (UIButton *)telBtn
{
    if (_telBtn == nil) {
        _telBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_telBtn setImage:[UIImage imageNamed:@"home_tel"] forState:UIControlStateNormal];
        [self addSubview:_telBtn];
    }
    return _telBtn;
}

- (UIButton *)scanBtn
{
    if (_scanBtn == nil) {
        _scanBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_scanBtn setImage:[UIImage imageNamed:@"home_scan"] forState:UIControlStateNormal];
        [self addSubview:_scanBtn];
    }
    return _scanBtn;
}

//方式一：
- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
{
    CGPoint scantPoint = [self convertPoint:point toView:self.scanBtn];
    if ([self.scanBtn pointInside:scantPoint withEvent:event]) {
        return self.scanBtn;
    } else {
        return [super hitTest:point withEvent:event];
    }
}

////方式二：
//- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event
//{
//    CGPoint scantPoint = [self convertPoint:point toView:self.scanBtn];
//    if ([self.scanBtn pointInside:scantPoint withEvent:event]) {
//        return YES;
//    }
//    return [super pointInside:point withEvent:event];
//}
@end
