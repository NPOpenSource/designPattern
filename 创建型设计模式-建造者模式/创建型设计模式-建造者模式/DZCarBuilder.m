//
//  DZCarBuilder.m
//  创建型设计模式-建造者模式
//
//  Created by 温杰 on 2018/4/8.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "DZCarBuilder.h"
@interface DZCarBuilder()
@property (nonatomic,strong) Car *car;
@end
@implementation DZCarBuilder
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.car = [Car new];
    }
    return self;
}

-(void)tire{
    self.car.tire =@"大众的轮胎";
}
-(void)wheel{
    self.car.wheel = @"大众的方向盘";
}
-(void)engine
{
    self.car.engine=@"大众的引擎";
}

-(Car *)createCar{
    return self.car;
}


@end
