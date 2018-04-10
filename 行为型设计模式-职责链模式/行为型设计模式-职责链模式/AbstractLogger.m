//
//  AbstractLogger.m
//  行为型设计模式-职责链模式
//
//  Created by 温杰 on 2018/4/10.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "AbstractLogger.h"

@implementation AbstractLogger
- (instancetype)initWithLevel:(int)level
{
    self = [super init];
    if (self) {
        self.level = level;
    }
    return self;
}

-(void)printLog:(int)level message:(NSString *)message
{
    if (self.level<=level) {
        [self writeLog:message];
    }
    if (self.nextLogger) {
        [self.nextLogger printLog:level message:message];
    }
}
@end
