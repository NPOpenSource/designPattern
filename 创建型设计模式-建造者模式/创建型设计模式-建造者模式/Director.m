//
//  Director.m
//  创建型设计模式-建造者模式
//
//  Created by 温杰 on 2018/4/8.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "Director.h"

@implementation Director
-(Car *)createCar:(id<Carbuilder>)carBuider
{
    [carBuider tire];
    [carBuider wheel];
    [carBuider engine];
    return  [carBuider createCar];
}
@end
