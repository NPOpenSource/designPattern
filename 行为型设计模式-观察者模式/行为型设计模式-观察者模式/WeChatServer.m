//
//  WeChatServer.m
//  行为型设计模式-观察者模式
//
//  Created by 温杰 on 2018/4/11.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "WeChatServer.h"
@interface WeChatServer()
@property (nonatomic,strong) NSMutableArray *obsersers;
@end
@implementation WeChatServer
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.obsersers=[NSMutableArray new];
    }
    return self;
}
static NSString * _message =nil;
-(void)setMessage:(NSString *)message{
    _message = message;
    [self notifyObserver];
}
-(void)registerObserver:(id<Observer>)observer{
    [self.obsersers addObject:observer];
}

-(void)removeObserver:(id<Observer>)observer{
    [self.obsersers removeObject:observer];
}

-(void)notifyObserver{
    for (id<Observer> observer in self.obsersers) {
        [observer update:_message];
    }
}



@end
