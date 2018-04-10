//
//  DirectionExpresssion.m
//  行为型设计模式-解释器模式
//
//  Created by 温杰 on 2018/4/10.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "DirectionExpresssion.h"

@interface DirectionExpresssion()
@property (nonatomic,strong) NSString *direction;
@end

@implementation DirectionExpresssion
- (instancetype)initWithDirection:(NSString *)direction
{
    self = [super init];
    if (self) {
        self.direction = direction;
    }
    return self;
}

-(NSString *)interptet{
    if ([self.direction isEqualToString:@"left"]) {
        return @"向左";
    }else if ([self.direction isEqualToString:@"right"]){
        return @"向右";
    }else if ([self.direction isEqualToString:@"up"]){
        return @"向上";
    }else if ([self.direction isEqualToString:@"down"]){
        return @"向下";
    }
    return @"未知方向";
}





@end
