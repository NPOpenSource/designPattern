//
//  Receptionist.m
//  结构型设计模式-外观模式
//
//  Created by 温杰 on 2018/4/9.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "Receptionist.h"
#import "Register.h"
#import "Medicine.h"
@implementation Receptionist
-(void)seeDoctor{
    [[Register new]reginster];
    [[Medicine new]medicine];
}

@end
