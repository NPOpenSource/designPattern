//
//  SentenceExpression.m
//  行为型设计模式-解释器模式
//
//  Created by 温杰 on 2018/4/10.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "SentenceExpression.h"

@interface SentenceExpression()
@property (nonatomic,strong) id<AbstractExpression> direction;
@property (nonatomic,strong) id<AbstractExpression> action;
@property (nonatomic,strong) id<AbstractExpression> distance;
@end

@implementation SentenceExpression
- (instancetype)initWithDirection:(id<AbstractExpression>)direction Action:(id<AbstractExpression>)action Distance:(id<AbstractExpression>)distance
{
    self = [super init];
    if (self) {
        self.direction = direction;
        self.action = action;
        self.distance = distance;
    }
    return self;
}


-(NSString *)interptet{
    return [NSString stringWithFormat:@"%@ %@ %@",[self.direction interptet],[self.action interptet],[self.distance interptet]];
}

@end
