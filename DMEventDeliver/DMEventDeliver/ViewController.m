//
//  ViewController.m
//  DMEventDeliver
//
//  Created by lbq on 2018/5/28.
//  Copyright © 2018年 lbq. All rights reserved.
//

#import "ViewController.h"
#import <Masonry.h>
#import "DMBottomView.h"
@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    DMBottomView *bottomView = [[DMBottomView alloc] init];
    [self.view addSubview:bottomView];
    [bottomView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.bottom.equalTo(self.view);
        make.height.equalTo(@56);
    }];
    
    [bottomView.scanBtn addTarget:self action:@selector(scanClick:) forControlEvents:UIControlEventTouchUpInside];
    [bottomView.telBtn addTarget:self action:@selector(telClick:) forControlEvents:UIControlEventTouchUpInside];
    [bottomView.locBtn addTarget:self action:@selector(locClick:) forControlEvents:UIControlEventTouchUpInside];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)scanClick:(UIButton *)aBtn
{
    NSLog(@"%s",__func__);
}

- (void)telClick:(UIButton *)aBtn
{
    NSLog(@"%s",__func__);
}

- (void)locClick:(UIButton *)aBtn
{
    NSLog(@"%s",__func__);
}
@end
