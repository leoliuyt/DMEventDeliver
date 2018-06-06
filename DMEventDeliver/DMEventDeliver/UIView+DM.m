//
//  UIView+DM.m
//  DMEventDeliver
//
//  Created by lbq on 2018/6/6.
//  Copyright © 2018年 lbq. All rights reserved.
//

#import "UIView+DM.h"

@implementation UIView (DM)

- (UIViewController *)findViewController:(Class)aClass
{
    id responder = self;
   
    while (responder) {
         NSLog(@"%@",responder);
        if ([responder isKindOfClass:aClass]) {
            return responder;
        }
        responder = [responder nextResponder];
    }
    return nil;
}
@end
