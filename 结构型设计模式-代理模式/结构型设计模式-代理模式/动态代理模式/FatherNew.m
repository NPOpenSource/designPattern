//
//  FatherNew.m
//  结构型设计模式-代理模式
//
//  Created by 温杰 on 2018/4/9.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "FatherNew.h"
@interface FatherNew ()
@property (nonatomic,strong) id<BuySmoke> son;
@end
@implementation FatherNew
-(void)addBuySmokeDelegate:(id<BuySmoke>)son{
    self.son = son;
}
-(void)buySmoke{
    [self.son buySmoke];
}
@end
