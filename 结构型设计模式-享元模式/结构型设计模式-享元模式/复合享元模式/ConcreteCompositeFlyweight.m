//
//  ConcreteCompositeFlyweight.m
//  结构型设计模式-享元模式
//
//  Created by 温杰 on 2018/4/9.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "ConcreteCompositeFlyweight.h"
@interface ConcreteCompositeFlyweight()
@property (nonatomic,strong) NSMutableDictionary * states;
@end
@implementation ConcreteCompositeFlyweight
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.states = [NSMutableDictionary dictionary];
    }
    return self;
}
-(void)add:(id<FlyWeight>)flyWeight key:(NSNumber*)key{
    [self.states setObject:flyWeight forKey:key];
}


-(void)openation:(NSString *)state{
    for (NSNumber *number in self.states.allKeys) {
      id<FlyWeight> flyweight= [self.states objectForKey:number];
        [flyweight openation:state];
    }
}




@end
