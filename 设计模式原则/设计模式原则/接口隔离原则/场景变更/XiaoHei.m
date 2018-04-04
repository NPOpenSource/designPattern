//
//  XiaoHei.m
//  设计模式原则
//
//  Created by 温杰 on 2018/4/4.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "XiaoHei.h"
@interface XiaoHei()
@property (nonatomic,strong) id<StartsA> startA;
@property (nonatomic,strong) id<StartsB> startB;

@end
@implementation XiaoHei

-(void)findStartsA:(id<StartsA>)start{
    self.startA = start;
}

-(void)findStartsB:(id<StartsB>)start{
    self.startB = start;
}
-(void)show{
    [self.startA goodLooking];
    [self.startB niceFigure];
}

@end
