//
//  Decorator.h
//  结构型设计模式-装饰着模式
//
//  Created by 温杰 on 2018/4/9.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Coffce.h"
@interface Decorator : NSObject<Coffce>
@property (nonatomic,strong) id<Coffce> coffce;
- (instancetype)initWithCoffce:(id<Coffce>)coffce;
@end
