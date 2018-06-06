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
#import "UIView+DM.h"
#import "DMButton.h"
@interface ViewController ()

@property (weak, nonatomic) IBOutlet DMButton *dmBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.dmBtn.exInsets = UIEdgeInsetsMake(0, 20, 20, 0);
    
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
    id vc = [aBtn findViewController:[ViewController class]];
    NSLog(@"result = %@",vc);
}

- (void)telClick:(UIButton *)aBtn
{
    NSLog(@"%s",__func__);
}

- (void)locClick:(UIButton *)aBtn
{
    NSLog(@"%s",__func__);
}
- (IBAction)dmPressAction:(id)sender {
    NSLog(@"%s",__func__);
}
@end
