//
//  FlyweightFactory.h
//  结构型设计模式-享元模式
//
//  Created by 温杰 on 2018/4/9.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FlyWeight.h"
#import "ConcreteFlyWeight.h"
#import "ConcreteCompositeFlyweight.h"
@interface FlyweightFactory : NSObject
///复合模式
-(id<FlyWeight>)factorys:(NSArray*)numbers;
///单元模式
-(id<FlyWeight>)factory:(NSNumber*)state;
@end
