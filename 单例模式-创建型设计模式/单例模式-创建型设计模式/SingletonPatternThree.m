//
//  SingletonPatternThree.m
//  单例模式-创建型设计模式
//
//  Created by 温杰 on 2018/4/2.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "SingletonPatternThree.h"
static SingletonPatternThree * manager = nil;

@implementation SingletonPatternThree

+(void)load{
    static dispatch_once_t onceToken = 0;
    dispatch_once(&onceToken, ^{
        manager = [[SingletonPatternThree alloc]initSingletonPattern];
    });
}

+(SingletonPatternThree *)shareSingletonPatternManager{
    return manager;
}



- (instancetype)initSingletonPattern{
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (instancetype)init{
    self = [super init];
    if (self) {
        assert(NO);
    }
    return self;
}
-(void)print{
    NSLog(@"单例打印");
}


@end
