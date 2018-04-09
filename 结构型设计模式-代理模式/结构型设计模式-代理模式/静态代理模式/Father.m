//
//  Father.m
//  结构型设计模式-代理模式
//
//  Created by 温杰 on 2018/4/9.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "Father.h"

@implementation Father
-(void)buySmoke{
    Son * son = [Son new];
    [son buySmoke];
}
@end
