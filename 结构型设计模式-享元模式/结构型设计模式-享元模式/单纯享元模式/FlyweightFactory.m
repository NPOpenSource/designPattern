//
//  FlyweightFactory.m
//  结构型设计模式-享元模式
//
//  Created by 温杰 on 2018/4/9.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "FlyweightFactory.h"

@interface FlyweightFactory()
@property (nonatomic,strong) NSMutableDictionary  *flyweights;
@end
@implementation FlyweightFactory
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.flyweights = [NSMutableDictionary dictionary];
    }
    return self;
}

-(id<FlyWeight>)factorys:(NSArray*)numbers{
    ConcreteCompositeFlyweight * flyWeights= [[ConcreteCompositeFlyweight alloc]init];
    for (NSNumber *num in numbers) {
       id<FlyWeight> flyWeight= [self factory:num];
        [flyWeights add:flyWeight key:num];
    }
    return flyWeights;
   
}

-(id<FlyWeight>)factory:(NSNumber *)state{
    id<FlyWeight> flyweight=[self.flyweights objectForKey:state];
    
    if (!flyweight) {
        ConcreteFlyWeight *weight = [ConcreteFlyWeight new];
        weight.state = state;
        [self.flyweights setObject:weight forKey:state];
        flyweight = weight;
    }
    return flyweight;
}
@end
