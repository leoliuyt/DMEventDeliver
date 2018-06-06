//
//  DMButton.m
//  DMEventDeliver
//
//  Created by lbq on 2018/6/6.
//  Copyright © 2018年 lbq. All rights reserved.
//

#import "DMButton.h"

@implementation DMButton

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
{
//    if (point.x < 0 && fabs(point.x) > self.exInsets.left) {
//        return [super hitTest:point withEvent:event];
//    } else if(point.x > 0 && point.x-CGRectGetWidth(self.frame) > self.exInsets.right){
//        return [super hitTest:point withEvent:event];
//    } else if(point.y < 0 && fabs(point.y) > self.exInsets.top){
//         return [super hitTest:point withEvent:event];
//    } else if (point.y > 0 && point.y - CGRectGetHeight(self.frame) > self.exInsets.bottom){
//        return [super hitTest:point withEvent:event];
//    } else {
//        return self;
//    }
     return [super hitTest:point withEvent:event];;
}

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event
{
    NSLog(@"%@",NSStringFromCGPoint(point));
    if (point.x < 0 && fabs(point.x) > self.exInsets.left) {
        return [super pointInside:point withEvent:event];
    } else if(point.x > 0 && point.x-CGRectGetWidth(self.frame) > self.exInsets.right){
        return [super pointInside:point withEvent:event];
    } else if(point.y < 0 && fabs(point.y) > self.exInsets.top){
        return [super pointInside:point withEvent:event];
    } else if (point.y > 0 && point.y - CGRectGetHeight(self.frame) > self.exInsets.bottom){
        return [super pointInside:point withEvent:event];
    } else {
        return YES;
    }
}

@end
