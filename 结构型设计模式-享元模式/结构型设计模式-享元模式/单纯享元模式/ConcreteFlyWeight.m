//
//  ConcreteFlyWeight.m
//  结构型设计模式-享元模式
//
//  Created by 温杰 on 2018/4/9.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "ConcreteFlyWeight.h"

@implementation ConcreteFlyWeight
-(void)openation:(NSString *)state{
    NSLog(@"address %@  %@ ",self,self.state);
    NSLog(@"可变部分值 %@ ",state);
}
@end
