//
//  DistanceExpression.m
//  行为型设计模式-解释器模式
//
//  Created by 温杰 on 2018/4/10.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "DistanceExpression.h"
@interface DistanceExpression()
@property (nonatomic,strong) NSString *distance;
@end
@implementation DistanceExpression
-(instancetype)initWithDistance:(NSString *)distance{
    self=[super init];
    if (self) {
        self.distance = distance;
    }
    return self;
}

-(NSString *)interptet{
    return  self.distance;
}


@end
