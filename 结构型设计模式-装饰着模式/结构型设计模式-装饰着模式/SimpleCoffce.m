//
//  SimpleCoffce.m
//  结构型设计模式-装饰着模式
//
//  Created by 温杰 on 2018/4/9.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "SimpleCoffce.h"
@interface SimpleCoffce()
@property (nonatomic,assign) float price;
@property (nonatomic,strong) NSString * name;
@end
@implementation SimpleCoffce
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.price = 10;
        self.name = @"simpleCoffce";
    }
    return self;
}
-(float)getPrice{
    return self.price;
}
-(NSString *)getName{
    return @"simpleCoffice";
    
};
@end
