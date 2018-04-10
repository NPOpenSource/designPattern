//
//  ActionExpression.m
//  行为型设计模式-解释器模式
//
//  Created by 温杰 on 2018/4/10.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "ActionExpression.h"
@interface ActionExpression()
@property (nonatomic,strong) NSString  *action;
@end
@implementation ActionExpression
- (instancetype)initWithAction:(NSString *)action
{
    self = [super init];
    if (self) {
        self.action = action;
    }
    return self;
}

-(NSString *)interptet{
    if ([self.action isEqualToString:@"move"]) {
        return @"移动";
    }else if ([self.action isEqualToString:@"run"]){
        return @"快速移动";
    }
    return @"未知操作";
}

@end
