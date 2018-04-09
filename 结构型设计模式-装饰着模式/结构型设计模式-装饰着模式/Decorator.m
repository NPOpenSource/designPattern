//
//  Decorator.m
//  结构型设计模式-装饰着模式
//
//  Created by 温杰 on 2018/4/9.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "Decorator.h"
@interface Decorator()
@end
@implementation Decorator
- (instancetype)initWithCoffce:(id<Coffce>)coffce
{
    self = [super init];
    if (self) {
        self.coffce = coffce;
    }
    return self;
}


@end
