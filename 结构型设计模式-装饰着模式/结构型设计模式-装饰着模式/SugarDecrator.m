//
//  SugarDecrator.m
//  结构型设计模式-装饰着模式
//
//  Created by 温杰 on 2018/4/9.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "SugarDecrator.h"

@implementation SugarDecrator
-(float)getPrice{
    return [self.coffce getPrice]+5;
}
-(NSString *)getName{
    return [[self.coffce  getName] stringByAppendingString:@"   addSugar"];
}

@end
