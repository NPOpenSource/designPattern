//
//  MilkPrice.m
//  结构型设计模式-装饰着模式
//
//  Created by 温杰 on 2018/4/9.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "MilkPriceDecorator.h"

@implementation MilkPriceDecorator
-(float)getPrice{
    return [self.coffce getPrice]+7;
}
-(NSString *)getName{
    return [[self.coffce   getName] stringByAppendingString:@"  addMilk"];
}
@end
