//
//  SimpleHandle.m
//  行为型设计模式-解释器模式
//
//  Created by 温杰 on 2018/4/10.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "SimpleHandle.h"
#import "SentenceExpression.h"
#import "DirectionExpresssion.h"
#import "ActionExpression.h"
#import "DistanceExpression.h"
#import "AndExpression.h"
@interface SimpleHandle()
@property (nonatomic,strong) NSMutableArray * expressionArr;
@end
@implementation SimpleHandle
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.expressionArr = [NSMutableArray array];
    }
    return self;
}


-(void)handleExpress:(NSString *)expression{
    
    NSArray * array = [expression componentsSeparatedByString:@" "];
    for (int i =0; i<array.count; i++) {
        if ([array[i] isEqualToString:@"and"]) {
            id<AbstractExpression> left = self.expressionArr.lastObject;
            [self.expressionArr removeLastObject];
            DirectionExpresssion * direction = [[DirectionExpresssion alloc]initWithDirection:array[++i]];
            ActionExpression *action = [[ActionExpression alloc]initWithAction:array[++i]];
            DistanceExpression * distance=[[DistanceExpression alloc]initWithDistance:array[++i]];
            SentenceExpression * right = [[SentenceExpression alloc]initWithDirection:direction Action:action Distance:distance];
            id<AbstractExpression> and= [[AndExpression alloc]initLeft:left right:right];
            [self.expressionArr addObject:and];
        }else{
            DirectionExpresssion * direction = [[DirectionExpresssion alloc]initWithDirection:array[i]];
            ActionExpression *action = [[ActionExpression alloc]initWithAction:array[++i]];
            DistanceExpression * distance=[[DistanceExpression alloc]initWithDistance:array[++i]];
            SentenceExpression * sentence = [[SentenceExpression alloc]initWithDirection:direction Action:action Distance:distance];
            [self.expressionArr addObject:sentence];
        }
    }
    
    
}
-(NSString*)handle{
    id<AbstractExpression> lastResult=[self.expressionArr lastObject];
    return [lastResult interptet];
    
}



@end
