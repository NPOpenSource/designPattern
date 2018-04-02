//
//  SingletonPatternTwo.m
//  单例模式-创建型设计模式
//
//  Created by 温杰 on 2018/4/2.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "SingletonPatternTwo.h"
static SingletonPatternTwo * manager = nil;
@implementation SingletonPatternTwo

+(SingletonPatternTwo *)shareSingletonPatternManager{
    @synchronized(self){
        if (!manager) {
            manager = [[SingletonPatternTwo alloc]initSingletonPattern];
        }
    }
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
