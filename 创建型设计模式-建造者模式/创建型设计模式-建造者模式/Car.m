//
//  Car.m
//  创建型设计模式-建造者模式
//
//  Created by 温杰 on 2018/4/8.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "Car.h"

@implementation Car
-(NSString *)description{
    NSLog(@"轮胎：%@ 方形盘：%@，引擎：%@",self.tire,self.wheel,self.engine);
    return nil;
}
@end
