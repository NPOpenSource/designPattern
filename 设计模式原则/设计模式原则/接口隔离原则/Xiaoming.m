//
//  XiaoMing.m
//  设计模式原则
//
//  Created by 温杰 on 2018/4/4.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "Xiaoming.h"
@interface Xiaoming()
@property (nonatomic,strong) id<Starts> start;
@end
@implementation Xiaoming
-(void)findStarts:(id<Starts>)start{
    self.start = start;
}

-(void)show{
    [self.start goodLooking];
    [self.start niceFigure];
}

@end
