//
//  ConcreteCompositeFlyweight.h
//  结构型设计模式-享元模式
//
//  Created by 温杰 on 2018/4/9.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FlyWeight.h"
@interface ConcreteCompositeFlyweight : NSObject<FlyWeight>
- (instancetype)init;
-(void)add:(id<FlyWeight>)flyWeight key:(NSNumber*)key;
@end
