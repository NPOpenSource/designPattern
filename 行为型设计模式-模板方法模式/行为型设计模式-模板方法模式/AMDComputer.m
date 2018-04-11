//
//  AMDComputer.m
//  行为型设计模式-模板方法模式
//
//  Created by 温杰 on 2018/4/11.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "AMDComputer.h"

@implementation AMDComputer
-(void)openComputer{
    NSLog(@"AMD 打开电脑");
}
-(void)playGame{
    NSLog(@"AMD 玩游戏");
}
-(void)closeComputer{
     NSLog(@"AMD 关闭电脑");
}
@end
