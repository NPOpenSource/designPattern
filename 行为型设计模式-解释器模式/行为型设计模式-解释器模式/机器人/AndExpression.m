//
//  AndExpression.m
//  行为型设计模式-解释器模式
//
//  Created by 温杰 on 2018/4/10.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "AndExpression.h"
@interface AndExpression()
@property (nonatomic,strong) id<AbstractExpression> left;
@property (nonatomic,strong) id<AbstractExpression> right;
@end

@implementation AndExpression
- (instancetype)initLeft:(id<AbstractExpression>)left right:(id<AbstractExpression> )right
{
    self = [super init];
    if (self) {
        self.left = left;
        self.right = right;
    }
    return self;
}

-(NSString *)interptet{
    return [NSString stringWithFormat:@"%@ 再 %@",[self.left interptet],[self.right interptet]] ;
}




@end
